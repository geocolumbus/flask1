from flask import Flask, request

app = Flask(__name__)

app.config['JSON_AS_ASCII'] = False

@app.route("/", methods=['GET', 'POST'])
def api():
    if request.method == 'GET':
        return "This is the GET"
    else:
        return "This is the POST"

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
