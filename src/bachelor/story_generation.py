import os 
import openai
openai.api_key=os.getenv("OPENAI_API_KEY") #please follow the instructions on OpenAI's website to obtain an API key
MODEL = "gpt-3.5-turbo"

prompt = "In two sentences, can you explain why flowers are different colors?" 

#Generates a response given a prompt using OpenAI's GPT-3 API 
def generate_response(prompt, system_message = "You are a helpful and friendly assistant.", max_tokens = 500, n = 1):
    print(prompt)
    print()
    response = openai.ChatCompletion.create(
        model = MODEL,
        messages =[
            {"role": "system", "content": system_message},
            {"role": "user", "content": prompt}
        ], 
        temperature = 0.7, 
        max_tokens = max_tokens,
        n = n #number of responses to return
    )
    return response['choices'][0]['message']['content'] #the text of the answer to the prompt ("role": "assistant")

sys_mes = """You are a humanoid robot named QT whose job is to help a 5 year old student with any question they have. 
You can show facial expressions and move your arms, but you cannot walk. Your goal is to simulate human to human conversation."""

sys_french = """Vous êtes un robot humanoïde nommé QT dont le travail consiste à aider un élève de 5 ans à répondre à toutes ses questions.
Vous pouvez montrer des expressions faciales et bouger vos bras, mais vous ne pouvez pas marcher. Votre objectif est de simuler une conversation d'homme à homme."""

#Obtains an answer to the given question 
def answer_question(prompt, system_message = sys_french, max_tokens = 200, n = 1):
    return generate_response(prompt, system_message, max_tokens, n)

#debugging purposes
def generate_fake_response(prompt):
    return prompt

#debugging purposes
if __name__ == '__main__':
    print(answer_question("Can you dance?"))