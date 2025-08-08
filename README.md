# Kids-Screens
The goal is to uncover how kids in India are using screens and what can be done to manage their screen time better.
📍 Project Overview
Digital Kids 2025 explores how children in India use digital devices in their daily lives. With increasing access to smartphones, tablets, and online learning tools, screen time has become a key factor influencing children's development, health, and learning. This project analyzes screentime habits, usage patterns, and influencing factors to offer insights that can support healthier digital behaviors.

🎯 Goal
To analyze screentime behavior among Indian children aged 5–16.

To identify patterns and risk factors related to excessive or unstructured screen usage.

To deliver actionable insights for parents, educators, healthcare professionals, and policymakers.

📦 Repository Structure: sql-database/
This repository provides complete coverage of a data pipeline — from acquisition to reporting — using SQL and Python.

pgsql
Copy
Edit
sql-database/
├── README.md                  # Project overview and documentation
├── data/
│   ├── raw/                   # Raw dataset files
│   └── processed/             # Cleaned and transformed data
├── database/
│   ├── digital_kids_schema.sql   # SQL file to create the database schema
│   └── ERD.png                   # Entity-Relationship Diagram
├── notebooks/
│   ├── 01_data_analysis.ipynb    # Jupyter notebook with full analysis and report
│   └── other_notebooks/          # (Optional) Additional notebooks for EDA, modeling, etc.
├── python/
│   ├── data_acquisition.py       # Python functions to acquire data
│   ├── data_cleaning.py          # Python functions to clean and prepare data
│   ├── data_loading.py           # Python functions to load data into SQL database
│   └── utils.py                  # Utility functions
├── sql/
│   ├── queries.sql               # Compilation of all SQL queries used in the project
└── visuals/
    └── charts/                   # Generated visualizations
🧪 Hypotheses
Older kids (12–16) have higher screen time than younger ones (5–11).

Entertainment-focused screen use correlates with higher total screen time.

Screen use after 9 PM negatively affects sleep quality.

Parental monitoring leads to reduced screen time.

Personal device ownership increases screen time.

🛠️ Pipeline Stages
Data Acquisition: Collect and load the dataset from Kaggle into local storage.

Data Transformation: Clean, preprocess, and structure the data using Python scripts.

Data Loading: Create an SQL database schema and load the processed data.

Analysis: Run descriptive statistics and SQL queries to test hypotheses.

Reporting: Present findings in a clean, well-structured Jupyter notebook with visualizations.

📈 Key Metrics
Average daily screen time

Screen time by purpose and age group

Impact of device type and bedtime usage

Sleep quality score (if available)

📊 Dataset
Source: Kaggle - Indian Kids Screentime 2025

🧩 Future Work
Predictive modeling to estimate screen time based on usage habits

Clustering kids by behavior patterns

Designing a digital wellness scoring system

📬 Contact
Feel free to connect for feedback or collaboration:

Author: Varsha Maurya

Email: varsha.eminent@gmail.com

LinkedIn: https://www.linkedin.com/in/varsha-maurya/