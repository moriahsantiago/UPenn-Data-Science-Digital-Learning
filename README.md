# UPenn-Data-Science-Digital-Learning
Coursework and projects from the University of Pennsylvania Graduate School of Education's Data Science Methods for Digital Learning Platforms certificate program. Includes NLP projects, machine learning applications in education, and learning analytics implementations.
Penn GSE Data Science coursework: Week 15 R sentiment analysis (72.4% accuracy), Week 16 BERT classification (61% accuracy), NLP and ML projects
# UPenn-Data-Science-Digital-Learning

Coursework and projects from the University of Pennsylvania Graduate School of Education's Data Science Methods for Digital Learning Platforms certificate program. Includes NLP projects, machine learning applications in education, and learning analytics implementations.

## Course Projects

### Natural Language Processing

#### Week 15: Sentiment Analysis with R - Student Teacher Evaluations
- **Data Source**: Kaggle competition "Sentiment analysis of student evaluations (IES 3)"
- **Task**: Binary classification of student comments about teachers (positive/negative)
- **Methodology**: NRC emotion lexicon + Logistic regression
- **Accuracy**: 72.4% (0.72357) on test predictions
- **Features**: 10 sentiment categories from NRC lexicon, normalized by text length
- **Technologies**: R, NRC Emotion Lexicon, Statistical modeling
- **Competition Format**: Training → Model development → Test predictions → Kaggle submission

#### Week 16: IELTS Essay Classification with BERT
- **Data Source**: IELTS Writing Scored Essays Dataset from Kaggle
- **Task**: Binary essay quality classification (high/low)
- **Methodology**: BERT-base-uncased fine-tuning with Simple Transformers
- **Accuracy**: 61% (advanced model with 100 samples)
- **Technologies**: Python, BERT, Simple Transformers, pandas, scikit-learn

### Performance Comparison
Traditional statistical approach (Week 15) achieved higher accuracy than deep learning (Week 16), demonstrating the effectiveness of proper feature engineering in NLP tasks.

## Data Sources
- **Week 15**: Kaggle Competition - "Sentiment analysis of student evaluations (IES 3)" (CC BY-SA 3.0 License)
- **Week 16**: IELTS Writing Scored Essays Dataset from Kaggle

## Technologies Used
- **Languages**: R, Python
- **ML/NLP**: BERT, NRC Lexicon, Logistic Regression, Simple Transformers
- **Tools**: RStudio, Google Colab, Jupyter Notebooks, Kaggle
