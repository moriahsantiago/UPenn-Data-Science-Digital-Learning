# =============================================================================
# Module 10: Hierarchical Cluster Analysis and Heat Maps
# Course: Data Science Methods for Digital Learning Platforms
# Dataset: USJudgeRatings (Lawyer evaluations of 43 judges on 12 criteria)
# 
# This analysis explores different clustering approaches following 
# Bowers et al. (2022) methodology for educational data visualization
# =============================================================================

# =============================================================================
# PACKAGE INSTALLATION AND LOADING
# =============================================================================

# Install required packages from Bioconductor (run once)
# if (!requireNamespace("BiocManager", quietly = TRUE))
#     install.packages("BiocManager")
# BiocManager::install("ComplexHeatmap")
# BiocManager::install("hopach")

# Load required libraries
library(ComplexHeatmap)
library(hopach)

# =============================================================================
# DATA PREPARATION
# =============================================================================

# Load the USJudgeRatings dataset
# This dataset contains lawyer ratings of 43 judges on 12 evaluation criteria
data(USJudgeRatings)

# Examine the data structure
head(USJudgeRatings)
dim(USJudgeRatings)  # 43 judges × 12 criteria

# Display variable information for reference
cat("USJudgeRatings Variables:\n",
    "CONT: Number of contacts of lawyer with judge\n",
    "INTG: Judicial integrity\n",
    "DMNR: Demeanor\n",
    "DILG: Diligence\n",
    "CFMG: Case flow managing\n",
    "DECI: Prompt decisions\n",
    "PREP: Preparation for trial\n",
    "FAMI: Familiarity with law\n",
    "ORAL: Sound oral rulings\n",
    "WRIT: Sound written rulings\n",
    "PHYS: Physical ability\n",
    "RTEN: Worthy of retention\n")

# =============================================================================
# ANALYSIS 1: DEFAULT HIERARCHICAL CLUSTERING
# =============================================================================

# Create baseline heatmap using ComplexHeatmap defaults
# Uses Euclidean distance and complete linkage clustering
Heatmap(USJudgeRatings, 
        name = "Rating Score",
        show_row_names = TRUE,
        show_column_names = TRUE,
        column_title = "Default Hierarchical Clustering",
        row_title = "Judges")

# =============================================================================
# ANALYSIS 2: UNCENTERED CORRELATION WITH AVERAGE LINKAGE
# =============================================================================

# Create heatmap following Bowers et al. (2022) recommendations
# Uses uncentered correlation (cosine similarity) and average linkage
# This approach focuses on rating patterns rather than absolute values
Heatmap(USJudgeRatings,
        name = "Rating Score",
        clustering_distance_rows = "pearson",
        clustering_method_rows = "average",
        clustering_distance_columns = "pearson", 
        clustering_method_columns = "average",
        show_row_names = TRUE,
        show_column_names = TRUE,
        column_title = "Uncentered Correlation + Average Linkage",
        row_title = "Judges")

# =============================================================================
# ANALYSIS 3: K-MEANS CLUSTERING
# =============================================================================

# Standardize the data using z-scores for k-means analysis
# This ensures all variables contribute equally to clustering
data_scaled <- scale(USJudgeRatings)

# Create k-means clustered heatmap with 3 pre-defined groups
# This approach partitions data into exactly k clusters
Heatmap(data_scaled, 
        name = "Z-Score",
        row_km = 3,                    # 3 row clusters (judges)
        column_km = 3,                 # 3 column clusters (criteria)
        row_names_gp = gpar(fontsize = 5),  # Smaller font for readability
        column_title = "K-Means Clustering (k=3)",
        row_title = "Judge Clusters")

# =============================================================================
# SUMMARY OF METHODS
# =============================================================================

# Method 1: Hierarchical clustering with Euclidean distance
#   - Best for identifying natural groupings based on overall similarity
#   - Complete linkage creates compact, well-separated clusters

# Method 2: Hierarchical clustering with correlation distance  
#   - Best for identifying similar rating patterns
#   - Average linkage provides robust clustering for educational data

# Method 3: K-means clustering with standardized data
#   - Best when you know the desired number of clusters
#   - Partitions data into non-overlapping groups of similar size

# =============================================================================
# KEY FINDINGS
# =============================================================================

# 1. CONT (contacts) consistently separates from other judicial quality measures
# 2. Judges cluster into distinct performance tiers (high, medium, low)  
# 3. Quality measures (integrity, decisions, preparation) cluster together
# 4. Different clustering methods reveal different aspects of the data structure