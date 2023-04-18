from enum import Enum
import operator
import random

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

      while(total < 0.8):
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

  def splitIntoSentences(self, text):
    sentences = text.split(".")
    sentences_final = []
    for elem in sentences:
      elem = elem + "." #TODO: do we really need the format for the robot? 
      elem = elem.strip() #delete trailing spaces 
      sentences_final.append(elem)
    #del sentences_final[-1]
    return sentences_final
