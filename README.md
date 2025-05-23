# Remove Background

A simple Flask web application that removes image backgrounds.

## 🧪 Run Locally (with Python and pip)

### 1. Clone the repository

```bash
git clone https://github.com/your-username/remove-background.git
cd remove-background
```

### 2. Create a virtual environment (optional but recommended)

```bash
python -m venv venv
source venv/bin/activate       # On Linux/Mac
venv\Scripts\activate          # On Windows
```

### 3. Install dependencies

```bash
pip install -r requirements.txt
```

### 4. Run the app

```bash
python app.py
```

App sẽ chạy tại: [http://localhost:5100](http://localhost:5100)

---

## 🐳 Run with Docker

### 1. Build Docker image

```bash
docker build -t remove-background-app .
```

### 2. Run Docker container

```bash
docker run -p 5100:5100 remove-background-app
```

App sẽ chạy tại: [http://localhost:5100](http://localhost:5100)

---

## 📂 Project Structure

```
.
├── app.py                 # Flask app
├── requirements.txt       # Python dependencies
├── Dockerfile             # For building container
└── README.md              # This file
```

---

## 🔧 Notes

- This app uses `gunicorn` to run in production-like environments via Docker.
- Flask app is assumed to be exposed in `app.py` via `app = Flask(__name__)`.

---

## 📃 License

MIT (or specify your license)
