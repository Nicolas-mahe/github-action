from flask import Flask, render_template
import os

app = Flask(__name__)
app.secret_key = os.getenv('DOCKERCONTAINERMANAGER_SECRET_KEY')
if not app.secret_key:
    raise ValueError("PAS DE CLE SECRETE. Veuillez ajouter DOCKERCONTAINERMANAGER_SECRET_KEY dans votre .env")

@app.route('/')
def index():
        return render_template('index.html')
