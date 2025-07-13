@echo off
set FLASK_APP=main.py
flask run

# app/templates/index.html
<!DOCTYPE html>
<html>
<head><title>GenAI App</title></head>
<body>
    <h2>Text Generator</h2>
    <form method="post">
        <textarea name="prompt" rows="4" cols="50" placeholder="Enter your prompt..."></textarea><br>
        <button type="submit">Generate</button>
    </form>
    <h3>Generated Text:</h3>
    <p>{{ output }}</p>
</body>
</html>