# 🐱 classifiCATion
This is a simple Flask-based web API that predicts the likelihood an uploaded image contains a cat using a pre-trained MobileNetV2 model from TensorFlow/Keras.

## 🚀 Features
- Accepts image uploads via POST requests.
- Uses a deep learning model to classify whether the image contains a cat.
- Returns the probability and a boolean result.

## 📦 Installation
### 1. Clone the Repository
```
git clone git@github.com:MaxGeo543/classifiCATion.git
cd classifiCATion
```
### 2. Create a Virtual Environment (Optional but Recommended)
```
python3 -m venv venv
source venv/bin/activate
```
### 3. Install Dependencies
Ensure you have `pip` updated, then run:
```
pip install -r requirements.txt
```

## 🛠️ Running the App
Make sure you're in the root directory and then simply run: 
```
python app.py
```
This will start the Flask app locally on `http://0.0.0.0:5000`.

## 📤 Using the API
You can test the API using `curl` or any HTTP client like Postman.
### Endpoint
`POST /predict`
### Form Data
- **file**: Image file (e.g., JPEG or PNG)
### Example with `curl`
```
curl -X POST http://localhost:5000/predict \
  -F "file=@path_to_your_image.jpg"
```
### Sample Response
```json
{
  "cat_probability": 0.8723,
  "is_cat": true
}
```

## 🧪 Running from Command Line (Optional)
You can also use the `main.py` script directly to classify an image:
```
python main.py path_to_your_image.jpg
```

## 🧠 How it Works
1. Flask receives an image file.
2. It's saved temporarily.
3. The MobileNetV2 model makes a prediction.
4. If any top prediction matches known cat-related labels, the highest probability is returned.
