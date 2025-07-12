@echo off
echo Activating virtual environment...
call ..\venv\Scripts\activate

echo Starting Flask App...
set FLASK_APP=main.py
flask run
