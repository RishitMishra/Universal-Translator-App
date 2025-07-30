# 🧠 Universal Translator App

This is a powerful Streamlit-based app that combines:

- 🤟 Sign Language Image Classification (Digit, ASL, ISL)
- 🌍 Language-to-Language Translation (Text/Audio/Video)

> ✅ The sign language classifier model has achieved **99.52% accuracy** during training — ensuring highly reliable results.

## 🔧 Features

### Sign Language Classifier
- Upload an image of a sign
- Choose between Digit, ASL, or ISL models
- Predict the digit or character with high confidence
- **Model Accuracy: 99.52%** 🚀

### Language Translator
- Translate between languages using:
  - ✍️ Text
  - 🎵 Audio (MP3/WAV)
  - 🎥 Video (MP4)
- Powered by OpenAI Whisper for transcription
- Translated using Meta NLLB (No Language Left Behind)
- Auto-detects language and provides accurate translation

## 🛠️ Tech Stack

- Python
- Streamlit
- TensorFlow
- HuggingFace Transformers
- Whisper (OpenAI)
- Meta NLLB
- FFmpeg

## 🚀 Run the App Locally

```bash
git clone https://github.com/your-username/universal-translator.git
cd universal-translator
pip install -r requirements.txt
streamlit run app.py
```

## 📁 Model Structure
Place your .h5 models in a folder named models/ like this:

models/
├── digitSignLanguage.h5
├── americanSignLanguage.h5
└── indianSignLanguage.h5

## 🤝 Contributing
Feel free to fork this repo and improve it!

## 📜 License
This project is licensed under the Apache 2.0 License.​