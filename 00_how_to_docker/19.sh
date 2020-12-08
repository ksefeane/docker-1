# launch a container named Abathur, python 2-slim version.
# its /root folder bound to a HOME folder on host, port 3000 bound to VM port 3000
# flask ready, serving 'Hello World' in H1 tags,test with curl VM IP:3000
# list all necessary commands
docker run --name Abathur -v ~/:/root/ -p 3000:3000 -dit python:2-slim &&
docker exec Abathur pip install flask &&
printf 'from flask import Flask
app = Flask(__name__)
@app.route("/")
def hello():
	return "<h1>Hello World</h1>"' > ~/app.py &&
docker exec -e FLASK_APP=/root/app.py Abathur python -m flask run --host=0.0.0.0 --port=3000
