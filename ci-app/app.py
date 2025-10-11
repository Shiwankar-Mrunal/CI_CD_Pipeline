from flask import Flask
import os

app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello from Azure Web App!"

if __name__ == "__main__":
    port = int(os.environ.get("PORT", 5000))  # Use Azure PORT or fallback to 8000
    app.run(host="0.0.0.0", port=port)


print("Starting Flask App, PORT =", os.environ.get("PORT"))
