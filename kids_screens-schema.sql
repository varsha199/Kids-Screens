CREATE DATABASE IF NOT EXISTS kids_screentime;

USE kids_screentime;

-- Table: child
DROP TABLE IF EXISTS child;
CREATE TABLE Child (
    Child_ID INT PRIMARY KEY,
    Age INT,
    Gender VARCHAR(10),
    Urban_or_Rural VARCHAR(10),
    Avg_Daily_Screen_Time_hr FLOAT,
    Exceeded_Recommended_Limit VARCHAR(3),
    Educational_to_Recreational_Ratio FLOAT,
    Primary_Device VARCHAR(50)
);

-- Table: Impact
DROP TABLE IF EXISTS Impact;
CREATE TABLE Impact (
    impact_ID INT PRIMARY KEY,
    impact_name VARCHAR(100)
);


-- Table: health_status_impact (Join table for many-to-many)
DROP TABLE IF EXISTS health_status_impact;
CREATE TABLE Health_Status_Impact (
    Child_ID INT,
    impact_ID INT,
    FOREIGN KEY (Child_ID) REFERENCES Child(Child_ID),
    FOREIGN KEY (impact_ID) REFERENCES Impact(impact_ID),
    PRIMARY KEY (Child_ID, impact_ID)
);

