from flask import Flask, render_template, request
from app.generator import generate_text

app = Flask(__name__)

@app.route("/", methods=["GET", "POST"])
def home():
    output = ""
    if request.method == "POST":
        prompt = request.form.get("prompt")
        output = generate_text(prompt)
    return render_template("index.html", output=output)

if __name__ == "__main__":
    app.run(debug=True)
