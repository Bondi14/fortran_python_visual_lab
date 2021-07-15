from flask import Flask, render_template, request

app = Flask(__name__)

@app.route('/')
def index():
  return render_template('index.html')

@app.route('/', methods=['POST'])
def my_form_post():
    import subprocess
    arg =["./a.out"]
    text = request.form['arg1']
    text2 = request.form['arg2']
    text3 = request.form['arg3']
    arg.append(text)
    arg.append(text2)
    arg.append(text3)
    process = subprocess.Popen(arg, stdout=subprocess.PIPE)
    data = process.communicate()
    for line in data:
        print(line)

    return data

@app.route('/my-link/')
def my_link():
  import subprocess
  process = subprocess.Popen(["./a.out", "1", "2", "3"], stdout=subprocess.PIPE)
  data = process.communicate()
  for line in data:
    print(line)

  return data

if __name__ == '__main__':
  app.run(debug=True)