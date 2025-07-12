from transformers import pipeline

generator = pipeline("text-generation", model="gpt2")

def generate_text(prompt: str, max_length=50):
    result = generator(prompt, max_length=max_length, num_return_sequences=1)
    return result[0]['generated_text']
