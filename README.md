# UPenn-Data-Science-Digital-Learning
Coursework and projects from the University of Pennsylvania Graduate School of Education's Data Science Methods for Digital Learning Platforms certificate program. Includes NLP projects, machine learning applications in education, learning analytics implementations, and social network analysis.

## Course Projects

**Neural Networks and Deep Learning**

## Cluster Analysis and Data Visualization
**Week 10: Hierarchical Cluster Analysis with ComplexHeatmap**

- **Data Source:** USJudgeRatings dataset (43 judges rated on 12 performance criteria by lawyers)
- **Task:** Multi-method clustering comparison and judicial performance pattern identification  
- **Methodology:** Hierarchical clustering vs K-means clustering with multiple distance metrics
- **Key Findings:**
  - CONT (lawyer contacts) consistently separates from judicial quality measures
  - Judges cluster into 3 distinct performance tiers (high/medium/low performers)
  - Uncentered correlation reveals rating patterns independent of absolute performance levels
- **Technologies:** R, ComplexHeatmap, Bioconductor packages, hierarchical clustering algorithms
- **Methods Compared:** 
  - Euclidean distance + complete linkage (default)
  - Uncentered correlation + average linkage (Bowers et al. 2022 methodology)
  - K-means clustering with standardized data (k=3)
- **Visualization:** Professional heatmaps with dendrograms showing cluster relationships and performance patterns

### **Social Network Analysis**
**Week 11: MOOC Forum Interaction Network Analysis**
* **Data Source**: MOOC discussion forum dataset (198 posts, 103 students) from Dr. Ryan Baker's Big Data and Education course
* **Task**: Social network construction and analysis of student-to-student reply interactions
* **Methodology**: Graph theory analysis using NetworkX - geodesic distances, centrality measures, connectivity analysis
* **Key Findings**: 
  - Network density: 2% (110 actual connections out of 5,253 possible)
  - Central students: 12345 (most responded to, 16 replies) and 24601 (most active, 24 posts)
  - Average path length demonstrates small-world properties in educational discussions
* **Network Metrics**: In-degree/out-degree centrality, shortest path algorithms, reachability analysis
* **Technologies**: Python, NetworkX, pandas, matplotlib, directed/undirected graph construction
* **Data Wrangling**: Post-to-poster mapping, undirected pair creation, self-loop removal, isolated node detection

**Week 14: Student Affect Detection with Neural Networks**
* **Data Source**: ASSISTments digital learning platform (48,716 student interaction records)
* **Task**: Multi-class classification of student emotional states (concentration, boredom, confusion, frustration)
* **Methodology**: Feed-forward neural networks + LSTM sequence modeling comparison
* **Performance**: Best model AUC = 0.668 (2-layer feed-forward: 128→64 nodes, ReLU activation)
* **Architecture Comparison**: Tested 4 configurations (1-3 hidden layers, ReLU vs Tanh activation)
* **Key Finding**: Feed-forward networks (AUC=0.668) outperformed sequence-aware models (AUC=0.521)
* **Technologies**: Python, Keras/TensorFlow, 5-fold cross-validation, ASSISTments behavioral data
* **Features**: 92 aggregated behavioral metrics (attempt counts, hint usage, time patterns)

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
Traditional statistical approach (Week 15 NLP) achieved highest accuracy at 72.4%, while neural networks (Week 14) reached 66.8% AUC on complex multi-class affect detection. Deep learning BERT (Week 16) achieved 61%, demonstrating that model complexity doesn't always correlate with performance - proper feature engineering and data preprocessing remain crucial.

## Data Sources
* **Week 14**: ASSISTments platform affect detection dataset - previously used in educational data mining research (Ocumpaugh et al., 2014; Botelho et al., 2017)
* **Week 15**: Kaggle Competition - "Sentiment analysis of student evaluations (IES 3)" (CC BY-SA 3.0 License)
* **Week 16**: IELTS Writing Scored Essays Dataset from Kaggle

## Technologies Used
- **Languages**: R, Python
- **ML/NLP**: Neural Networks, LSTM, BERT, NRC Lexicon, Logistic Regression, Simple Transformers
- **Tools**: RStudio, Google Colab, Jupyter Notebooks, Kaggle
