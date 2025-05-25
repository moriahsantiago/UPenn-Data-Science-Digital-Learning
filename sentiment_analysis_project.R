# Load all necessary libraries
library(tidyverse)
library(tidytext)
library(stringr)
# Load the datasets
train_data <- read.csv("train.csv")
test_data <- read.csv("test.csv")
sample_submission <- read.csv("sample.csv")
getwd()
# Try setting the working directory to the Sentiment Analysis folder
setwd("~/Sentiment Analysis")
train_data <- read.csv("train.csv")
test_data <- read.csv("test.csv")
sample_submission <- read.csv("sample.csv")
# Check the first few rows of each dataset
head(train_data)
head(test_data)
head(sample_submission)
ls()
# Load the training and testing datasets
train_data <- read.csv("train.csv")
test_data <- read.csv("test.csv")

# Verify they loaded correctly
head(train_data)
head(test_data)

# Check all objects in environment
ls()
# Load the training and testing datasets
train_data <- read.csv("train.csv")
test_data <- read.csv("test.csv")

# Verify they loaded correctly
head(train_data)
head(test_data)

# Check all objects in environment
ls()
# Load the training dataset
train_data <- read.csv("train.csv")
# Check if it loaded
head(train_data)

# Load the testing dataset
test_data <- read.csv("test.csv")
# Check if it loaded
head(test_data)

# Check all objects in environment again
ls()
list.files()
# Load the training dataset
train_data <- read.csv("train.csv")

# Check if training data loaded
print("Training data:")
head(train_data)

# Load the testing dataset
test_data <- read.csv("test.csv")

# Check if testing data loaded
print("Testing data:")
head(test_data)

# Check all objects in environment again
ls()
# Load the training dataset
train_data <- read.csv("train.csv")
# Check if training data loaded
print("Training data:")
head(train_data)
# Load the testing dataset
test_data <- read.csv("test.csv")
# Check if testing data loaded
print("Testing data:")
head(test_data)
# Check all objects in environment again
ls()
# Check the dimensions of datasets
dim(train_data)  # Number of rows and columns in training data
dim(test_data)   # Number of rows and columns in test data
# Check the distribution of sentiment in training data
table(train_data$Sentiment)
prop.table(table(train_data$Sentiment))  # Proportions
# Look at text lengths
train_data$text_length <- nchar(train_data$StudentComments)
summary(train_data$text_length)  # Summary statistics of text length
# Check for missing values
sum(is.na(train_data))
sum(is.na(test_data))
# Add text length column
train_data$text_length <- nchar(as.character(train_data$StudentComments))
test_data$text_length <- nchar(as.character(test_data$StudentComments))
# Now check text length statistics
summary(train_data$text_length)
summary(test_data$text_length)
# Check the dimensions of training data
dim(train_data)
# Look at examples of positive comments
train_data[train_data$Sentiment == 1, "StudentComments"][1:2]
# Look at examples of negative comments
train_data[train_data$Sentiment == 0, "StudentComments"][1:2]
# Add text length column to training data
train_data$text_length <- nchar(as.character(train_data$StudentComments))

# Check text length statistics
summary(train_data$text_length)
# Load required tidytext package for text processing
library(tidytext)
# Function to clean text
clean_text <- function(text) {
  text <- tolower(text)
  text <- gsub("[[:punct:]]", " ", text)
  text <- gsub("[[:digit:]]", " ", text)
  text <- gsub("\\s+", " ", text)
  text <- trimws(text)
  return(text)
}
# Apply cleaning to both datasets
train_data$clean_comments <- clean_text(train_data$StudentComments)
test_data$clean_comments <- clean_text(test_data$StudentComments)
# Check the first cleaned comment
head(train_data$clean_comments, 1)
# Check the first cleaned comment
head(train_data$clean_comments, 1)
# Check current objects in environment
ls()
# Reload datasets
train_data <- read.csv("train.csv")
test_data <- read.csv("test.csv")

# Check if they're loaded
head(train_data)
head(test_data)
# Load required libraries
library(tidyverse)
library(tidytext)
library(stringr)

# Load the datasets
train_data <- read.csv("train.csv")
test_data <- read.csv("test.csv")
sample_submission <- read.csv("sample.csv")

# Check if they loaded correctly
head(train_data)
head(test_data)
head(sample_submission)
# Install required packages (if not already installed)
install.packages("tidyverse")
install.packages("tidytext")
install.packages("stringr")

# Load libraries
library(tidyverse)
library(tidytext)
library(stringr)

# Load the datasets
train_data <- read.csv("train.csv")
test_data <- read.csv("test.csv")
sample_submission <- read.csv("sample.csv")

# Confirm data loaded
ls()
# Install required packages (if not already installed)
install.packages("tidyverse")
install.packages("tidytext")
install.packages("stringr")
# Load libraries
library(tidyverse)
library(tidytext)
library(stringr)
# Load the datasets
train_data <- read.csv("train.csv")
test_data <- read.csv("test.csv")
sample_submission <- read.csv("sample.csv")
# Confirm data loaded
ls()
# Check your current working directory
getwd()
# Check your current working directory
getwd()
# List all files in the current directory
list.files()
# Try to set the working directory to "Sentiment Analysis"
setwd("~/Sentiment Analysis")

# Check if it worked
getwd()
list.files()
train_data <- read.csv("train.csv")
test_data <- read.csv("test.csv")
sample_submission <- read.csv("sample.csv")
test_data <- read.csv("test.csv")
train_data <- read.csv("train.csv")
# Confirm data loaded
ls()
# Add text length columns
train_data$text_length <- nchar(as.character(train_data$StudentComments))
test_data$text_length <- nchar(as.character(test_data$StudentComments))
# Apply cleaning to both datasets
train_data$clean_comments <- clean_text(train_data$StudentComments)
test_data$clean_comments <- clean_text(test_data$StudentComments)
# Check the first cleaned comment
head(train_data$clean_comments, 1)
str(train_data)
head(train_data)
str(test_data)
head(test_data)
list.files()

library(dplyr)
train_data <- train_data %>% 
  mutate(
    clean_comments = clean_text(StudentComments),
    text_length   = str_count(clean_comments, "\\w+")
  )
head(train_data[, c("ID","clean_comments","text_length")])
list.files()
# Let's apply the cleaning function directly
train_data$clean_comments <- sapply(train_data$StudentComments, clean_text)
test_data$clean_comments <- sapply(test_data$StudentComments, clean_text)
# Check if it worked
head(train_data$clean_comments, 1)
ls()
library(tidyverse)
library(tidytext)
library(stringr)
library(dplyr)
setwd("~/Sentiment Analysis")
train_data <- read.csv("train.csv")
# Check what objects are now in your environment
ls()

# Check the dimensions and first few rows of the data
dim(train_data)
head(train_data)
# Load the other datasets
test_data <- read.csv("test.csv")
sample_submission <- read.csv("sample.csv")

# Check that everything loaded
ls()
dim(train_data)
dim(test_data)
dim(sample_submission)

# Create the clean_text function
clean_text <- function(text) {
  text <- tolower(text)
  text <- gsub("[[:punct:]]", " ", text)
  text <- gsub("[[:digit:]]", " ", text)
  text <- gsub("\\s+", " ", text)
  text <- trimws(text)
  return(text)
}

# Verify the function was created
ls()
# Load the other datasets
test_data <- read.csv("test.csv")
sample_submission <- read.csv("sample.csv")
# Create the clean_text function
clean_text <- function(text) {
  text <- tolower(text)
  text <- gsub("[[:punct:]]", " ", text)
  text <- gsub("[[:digit:]]", " ", text)
  text <- gsub("\\s+", " ", text)
  text <- trimws(text)
  return(text)
}
# Check that everything is loaded
ls()
# Now clean the text data (picking up where we left off)
train_data <- train_data %>% 
  mutate(
    clean_comments = clean_text(StudentComments),
    text_length = str_count(clean_comments, "\\w+")
  )

test_data <- test_data %>%
  mutate(
    clean_comments = clean_text(StudentComments),
    text_length = str_count(clean_comments, "\\w+")
  )
# First, let's check what we have
ls()
# Load all datasets again
test_data <- read.csv("test.csv")
sample_submission <- read.csv("sample.csv")
# Check what we have now
ls()
# Create the clean_text function
clean_text <- function(text) {
  text <- tolower(text)
  text <- gsub("[[:punct:]]", " ", text)
  text <- gsub("[[:digit:]]", " ", text)
  text <- gsub("\\s+", " ", text)
  text <- trimws(text)
  return(text)
}
# Check again
ls()
# Clean the text data
train_data$clean_comments <- clean_text(train_data$StudentComments)
train_data$text_length <- str_count(train_data$clean_comments, "\\w+")

test_data$clean_comments <- clean_text(test_data$StudentComments)
test_data$text_length <- str_count(test_data$clean_comments, "\\w+")
# Check what files are available
list.files()
# Check your current working directory
getwd()
# Try to load test_data again
test_data <- read.csv("test.csv")
# Check if it loaded
ls()
# Try reading the file and immediately check its structure
test_data <- read.csv("test.csv")
dim(test_data)
head(test_data)
# Check if the file exists and is readable
file.exists("test.csv")
# Try using a different method to read the file
test_data <- read.table("test.csv", sep=",", header=TRUE)
# Try reading with different options to handle formatting issues
test_data <- read.csv("test.csv", stringsAsFactors = FALSE, quote = "\"", fill = TRUE)
# Check if it worked
dim(test_data)
head(test_data)
# Check if it worked
dim(test_data)
head(test_data)
# Let's continue with just training data for now
ls()
# Clean the training data
train_data$clean_comments <- clean_text(train_data$StudentComments)
train_data$text_length <- str_count(train_data$clean_comments, "\\w+")
# Check if it worked
head(train_data[, c("ID", "Sentiment", "clean_comments", "text_length")])
# First, let's check if clean_comments exists and has content
head(train_data$clean_comments)
# If clean_comments doesn't exist, let's create it again
train_data$clean_comments <- clean_text(train_data$StudentComments)
# Check if that worked
head(train_data$clean_comments)
# Alternative way to count words
train_data$text_length <- sapply(train_data$clean_comments, function(x) length(strsplit(x, "\\s+")[[1]]))
# Check if it worked
head(train_data[, c("ID", "Sentiment", "text_length")])
> # First, let's check if clean_comments exists and has content
> head(train_data$clean_comments)
NULL
> # If clean_comments doesn't exist, let's create it again
> train_data$clean_comments <- clean_text(train_data$StudentComments)
> # Check if that worked
> head(train_data$clean_comments)
[1] "he is very obedient to the student he is very friendly and also smiling face he is very helpful his accounting process is very easy to us when student not understand he didnt go another chapter which is ver good when we face any problem then he solve it very clearly he is very honest to his grade i like his honesty"
[2] "he fails to explain the context clearly and skips without asking other students if they had understood or not he does not exlpain to the students cleary how to read and write the context without doing so he just kept on taking qiuzs"                                                                                    
[3] "her teaching way is not clear to me because she does not clearly discuss what she will do if she clearly open what she want to teach us we will very kind to her her marking system is very poor because she does not give enough mark in assignment and class work which is very harmful to all of us to get a good grade"  
[4] "dass dr bijoy bhuson is a perfect english teacher and also cares the students their study and also their behavoir i like his teaching style as well as his way of communicates with the students he takes so many presentations and encourage us to participate in the class"                                                
[5] "i dont understand in this era why does he keep insisting on memorization instead of explaining the theories correctly on our own way in subjects like physics or chemistry moreover his knowledge of these subjects can easily be doubted because he taught the newtons law of universal gravitation incorrect"              
[6] "he is the very good teacher and his teaching method was also good when he teach his student then he seems to be so knowledgful which is exception i am very happy to meet with such kind of teacher but need to few change in teaching method and need to reduse his angry whic is very fear for his student"                
> # Alternative way to count words
> train_data$text_length <- sapply(train_data$clean_comments, function(x) length(strsplit(x, "\\s+")[[1]]))
> # Check if it worked
> head(train_data[, c("ID", "Sentiment", "text_length")])
# Load NRC sentiment lexicon
nrc_data <- get_sentiments("nrc")
# Check the structure of NRC data
head(nrc_data)
unique(nrc_data$sentiment)
# Create tokens from train data and join with NRC
train_sentiment <- train_data %>%
  unnest_tokens(word, clean_comments) %>%
  inner_join(nrc_data, by = "word")
# Look at the first few sentiment-tagged words
head(train_sentiment)
# Count sentiments by document
sentiment_counts <- train_sentiment %>%
  count(ID, sentiment) %>%
  spread(sentiment, n, fill = 0)
# Look at the sentiment counts for the first few documents
head(sentiment_counts)
# Add sentiment features back to the original training data
train_features <- train_data %>%
  left_join(sentiment_counts, by = "ID")
# Replace any NA values with 0
sentiment_columns <- c("anger", "anticipation", "disgust", "fear", "joy", 
                       "negative", "positive", "sadness", "surprise", "trust")
train_features[sentiment_columns] <- lapply(train_features[sentiment_columns], 
                                            function(x) ifelse(is.na(x), 0, x))
# Define the sentiment columns
sentiment_columns <- c("anger", "anticipation", "disgust", "fear", "joy", 
                       "negative", "positive", "sadness", "surprise", "trust")
# Replace any NA values with 0
train_features[sentiment_columns] <- lapply(train_features[sentiment_columns], 
                                            function(x) ifelse(is.na(x), 0, x))

# Normalize by text length to get proportions
train_features <- train_features %>%
  mutate(across(all_of(sentiment_columns), ~ . / text_length, .names = "{.col}_norm"))
# Check the results
head(train_features[, c("ID", "Sentiment", "text_length", sentiment_columns)])
# Try to load test data again with more robust settings
test_data <- read_csv("test.csv", locale = locale(encoding = "UTF-8"))
# Check if it loaded
dim(test_data)
head(test_data)
# Clean test data
test_data$clean_comments <- clean_text(test_data$StudentComments)
test_data$text_length <- sapply(test_data$clean_comments, function(x) length(strsplit(x, "\\s+")[[1]]))
ls()
# Check what columns test_data currently has
colnames(test_data)
head(test_data, 2)
# Process the test data (same steps we did for training data)
test_data$clean_comments <- clean_text(test_data$StudentComments)
test_data$text_length <- sapply(test_data$clean_comments, function(x) length(strsplit(x, "\\s+")[[1]]))
# First, let's check if clean_comments was created
head(test_data$clean_comments)
# If it shows NULL, let's create it again step by step
test_data$clean_comments <- clean_text(test_data$StudentComments)
# Check if it worked this time
head(test_data$clean_comments)

# Check the length to make sure it matches the number of rows
length(test_data$clean_comments)
nrow(test_data)
# Check if StudentComments exists and has content
head(test_data$StudentComments)
# Check if clean_text function is working
clean_text("This is a test sentence.")
 # Check if it worked this time
> head(test_data$clean_comments)
[1] "y have no capabvle to learn uni eng u do not think the generel student h s c y think a o level student y study system is not good for all student now we want to change this study system dear sir y wel but i am sorry to this commend"                                                                                                                                                                                                                                                                                                                                                              
[2] "he does not have any qualifications to teach us i mean he doesnt have da teaching capability his attitude is very poor and he seems to have a personal jealousy with the english medium students he cannot answer questions properly overall he is extremly a bad teacher"                                                                                                                                                                                                                                                                                                                            
[3] "an eloquent teacher with a good command on his subject matters i really enjoy his classes and can honestly say that i feel for the first time since i joined aiub i have met a teacher from whom i have learnt a lot however although the midterm paper he set us asked intelligent questions they could not be properly applied to within the time constraint of hours as they required too much analysis for the short period of time given us the questions types are appreciated but then maybe if he had asked instead of questions all students would have been able to finish the entire paper"
[4] "i like all the lectures of his classes because he s very much precised about mathematical terms that he explains to us and he s also concerned about our better understanding as well he has made a critical subject like bus math much easier to me so i thank him very much"                                                                                                                                                                                                                                                                                                                        
[5] "she is very helpful to the students most of the time she try help the whole class her teaching process is very good she didnot move the new chapter when students r not understand she give example alot so that the student can understand easily"                                                                                                                                                                                                                                                                                                                                                   
[6] "he is the best teacher i have ever seen in my yrs of life he is punctual about the classess and his lectures are quite easy to understand his quality is taht he is very much close and free with the students"                                                                                                                                                                                                                                                                                                                                                                                       
> nrow(test_data)
[1] 1494
> # Check if StudentComments exists and has content
> head(test_data$StudentComments)
[1] "y have no capabvle to learn uni eng.u do not think the generel student(h.s.c).y think a\\o level student.y study system is not good for all student.now, we want to change this study system. dear sir, y wel,but i am sorry to this commend."                                                                                                                                                                                                                                                                                                                                                                      
[2] "he does not have any qualifications to teach us.i mean he doesnt have da teaching capability.his attitude is very poor.and he seems to have a personal jealousy with the english medium students.he cannot answer questions properly.overall he is extremly a bad teacher"                                                                                                                                                                                                                                                                                                                                          
[3] "an eloquent teacher, with a good command on his subject matters. i really enjoy his classes and can honestly say that i feel for the first time since i joined aiub, i have met a teacher from whom i have learnt a lot.however, although the midterm paper he set us asked intelligent questions, they could not be properly applied to within the time constraint of 2hours, as they required too much analysis for the short period of time given us. the questions types are appreciated but then maybe if he had asked 3 instead of 4 questions, all students would have been able to finish the entire paper."
[4] "\"i like all the lectures of his classes, because he's very much precised about mathematical terms that he explains to us and he's also concerned about our better understanding as well. he has made a critical subject like bus.math - much easier to me. so, i thank him very much.\""                                                                                                                                                                                                                                                                                                                           
[5] "she is very helpful to the students.most of the time she try help the whole class.her teaching process is very good.she didnot move the new chapter when students r not understand.she give example alot so that the student can understand easily."                                                                                                                                                                                                                                                                                                                                                                
[6] "he is the best teacher i have ever seen in my 20 yrs of life,he is punctual about the classess and his lectures are quite easy to understand. his quality is taht he is very much close and free with the students."                                                                                                                                                                                                                                                                                                                                                                                                
> # Check if clean_text function is working
> clean_text("This is a test sentence.")
[1] "this is a test sentence"
# Add text length to test data
test_data$text_length <- sapply(test_data$clean_comments, function(x) length(strsplit(x, "\\s+")[[1]]))
# Check if it worked
head(test_data[, c("ID", "text_length")])
# Check the structure
str(test_data)
# Extract sentiment features from test data
test_sentiment <- test_data %>%
  unnest_tokens(word, clean_comments) %>%
  inner_join(nrc_data, by = "word")
# Continue with sentiment counts
test_sentiment_counts <- test_sentiment %>%
  count(ID, sentiment) %>%
  spread(sentiment, n, fill = 0)
# Check the sentiment counts
head(test_sentiment_counts)
# Add to test data
test_features <- test_data %>%
  left_join(test_sentiment_counts, by = "ID")
# Replace NA with 0 and normalize
test_features[sentiment_columns] <- lapply(test_features[sentiment_columns], 
                                           function(x) ifelse(is.na(x), 0, x))

test_features <- test_features %>%
  mutate(across(all_of(sentiment_columns), ~ . / text_length, .names = "{.col}_norm"))

# Check the results
head(test_features[, c("ID", sentiment_columns)])
# Train a logistic regression model using the normalized sentiment features
model <- glm(Sentiment ~ anger_norm + anticipation_norm + disgust_norm + fear_norm + 
               joy_norm + negative_norm + positive_norm + sadness_norm + 
               surprise_norm + trust_norm, 
             data = train_features, family = "binomial")
# Check the model summary
summary(model)
# Make predictions on test data
predictions <- predict(model, test_features, type = "response")

# Convert probabilities to binary predictions (0 or 1)
predictions_binary <- ifelse(predictions > 0.5, 1, 0)

# Check the first few predictions
head(data.frame(ID = test_features$ID, 
                Probability = predictions, 
                Prediction = predictions_binary))
# Create submission file in the format Kaggle expects
submission <- data.frame(ID = test_features$ID, 
                         Sentiment = predictions_binary)
# Check the submission format
head(submission)
# Write to CSV file
write.csv(submission, "submission.csv", row.names = FALSE)
# Confirm it was created
list.files(pattern = "submission.csv")
# Check how well your sentiment features separate classes
train_features %>%
  group_by(Sentiment) %>%
  summarise(
    avg_positive = mean(positive_norm),
    avg_negative = mean(negative_norm),
    avg_joy = mean(joy_norm),
    avg_anger = mean(anger_norm)
  )
# Check for potential issues
train_features %>%
  group_by(Sentiment) %>%
  summarise(
    count = n(),
    avg_text_length = mean(text_length),
    zero_length_texts = sum(text_length == 0),
    avg_positive_raw = mean(positive, na.rm = TRUE),
    avg_negative_raw = mean(negative, na.rm = TRUE)
  )

# Check for NAs or infinite values in normalized features
train_features %>%
  summarise(
    positive_norm_nas = sum(is.na(positive_norm)),
    positive_norm_inf = sum(is.infinite(positive_norm)),
    negative_norm_nas = sum(is.na(negative_norm)),
    negative_norm_inf = sum(is.infinite(negative_norm))
  )
# Clean version - remove NaN and infinite values
clean_features <- train_features %>%
  filter(!is.na(positive_norm) & !is.infinite(positive_norm) & 
           !is.na(negative_norm) & !is.infinite(negative_norm))
clean_features %>%
  group_by(Sentiment) %>%
  summarise(
    count = n(),
    avg_positive = mean(positive_norm),
    avg_negative = mean(negative_norm),
    avg_joy = mean(joy_norm),
    avg_anger = mean(anger_norm)
  )
# Create submission file in the format Kaggle expects

submission <- data.frame(ID = test_features$ID, 
                         
                         Sentiment = predictions_binary)
# Check the submission format

head(submission)
# Write to CSV file

write.csv(submission, "submission.csv", row.names = FALSE)
# Confirm it was created

list.files(pattern = "submission.csv")
