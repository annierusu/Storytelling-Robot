from enum import Enum
import operator
import random
import re

from transformers import pipeline

#This is the minimum threshold for an option to be considered with probability equal to its score.
MINORITY_THRESHOLD = 0.2

class sentiment(Enum):
  ANGRY = "anger"
  DISGUSTED = "disgust"
  AFRAID = "fear"
  JOYFUL = "joy"
  NEUTRAL = "neutral"
  SAD = "sadness"
  SURPRISED = "surprise"

class Classifier:
  def __init__(self) -> None:
    self.model = pipeline("text-classification", model="j-hartmann/emotion-english-distilroberta-base", top_k=None)

  #Classify a text and return a dictionary with the sentences and the related sentiment
  def classify(self, text, auto_split):
    if auto_split == True:
      print("Splitting text into sentences...")
      splitted = self.splitIntoSentences(text)
    else:
      splitted = text

    sentences_with_sentiment = {}

    for sentence in splitted:
      emotions_list = self.sortByScore(self.model(sentence)[0])
      #Now we have a dictionary with sentences and the related sentiments sorted

      total = 0
      index = 0
      temp = []

      while(total < 0.5): #we want to consider only the most probable emotions, so we take the first ones 
        total += emotions_list[index]['score']
        temp.append(emotions_list[index])
        index += 1 
      
      emotions_list = self.normalize(temp)
      sentences_with_sentiment[sentence] = self.weightedRandom(emotions_list)[0]
    
    return sentences_with_sentiment

  #chooses an emotion in the selected set used as input. This functions expects the list to be normalized between 0 and 1 and with the sum equals to 1
  def weightedRandom(self, list):
    emotions = []
    weights = []
    for element in list:
      emotions.append(element['label'])
      weights.append(element['score'])
    
    return random.choices(population=emotions, weights=weights, k = 1)

  #normalize a list of dict with emotions and scores between 0 and 1 for ONE sentence
  def normalize(self, list):
    normalized_list = []

    for element in list:
      tmp = (element['score'] / sum(item['score'] for item in list))
      normalized_list.append({'label' : element['label'], 'score' : tmp})

    return(normalized_list)

  #sort the emotion list by descending score
  def sortByScore(self, list):
    return sorted(list, key = lambda d: d['score'], reverse=True)

  #split sentences based on punctuation: . ? ! and ...
  def splitIntoSentences(self, text):
    text = re.split(r'(?<!\w\.\w.)(?<![A-Z][a-z]\.)(?<=\.|\?|\!)\s', text)
    splitted = []
    for t in text:
      if t == '': #skip empty lines
        continue
      t = t.replace('\n',' ').replace('\t', ' ') #remove any newlines or tabs within a sentence 
      t = t.replace('  ', ' ') #remove double spaces potentially caused by the previous line
      t = t.strip() #remove leading and trailing spaces
      splitted.append(t)
    return splitted

#debugging purposes
if __name__ == "__main__":
  test = "\t\thello there"
  print("start")
  print(test.strip())
  print()
  text = """Mr. Smith bought cheapsite.com for 1.5 million dollars, i.e. he paid a lot for it. Did he mind! \tDid he mind? Adam Jones Jr. thinks he didn't. In any case, this isn't true...

 Well, with a probability of .9 it isn't. How crazy! Oh well...?"""

  text2 = """Once upon a time, there was a beautiful garden filled with vibrant flowers of all colors and shapes.
  The flowers were happy, soaking up the sunshine and enjoying the cool breeze that gently blew through the garden.


One day, a curious little bee flew into the garden, buzzing around from flower to flower. As she landed on each flower, she noticed that something magical was happening...
Tiny grains of pollen were sticking to her furry body, and as she flew away, the pollen traveled with her. She said:
\t"That was some yummy nectar!"
, as she flew away. The bee didn't realize it yet, but she was helping to pollinate the flowers!
Pollination is the process by which pollen is transferred from the male part of a flower to the female part of another flower, allowing the flowers to produce seeds and grow into new plants."""
  classifier = Classifier()
  sentences = classifier.classify(text2, True)
  for s in sentences:
    print(s)
    print(sentiment(sentences[s]))
    print()
    
