import os 
import openai
openai.api_key=os.getenv("OPENAI_API_KEY")
MODEL = "gpt-3.5-turbo"

prompt = "In two sentences, can you explain why flowers are different colors?" 

#Generates a response given a prompt using OpenAI's GPT-3 API 
def generate_response(prompt, system_message = "You are a helpful and friendly assistant.", max_tokens = 600, n = 1):
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

#for debugging (so we dont have to access the API every time)
def generate_fake_response(prompt):
    return prompt

if __name__ == '__main__':
    print(generate_response("write a story understandable for a 5 year old about how floods are caused, in 5 sentences or less."))