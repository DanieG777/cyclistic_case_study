# Cyclistic Bike-Share Case Study 

**Author:** Daniel Dawit  
**Date:** July 2025  
**Tools:** R, tidyverse, ggplot2, R Markdown  

#Overview

This case study is part of the Google Data Analytics Capstone project. The objective is to analyze how annual members and casual riders use the Cyclistic bike-share program differently — and to help the marketing team design data-driven strategies to convert casual riders into annual members.

# Business Task

The Cyclistic marketing team wants to understand:

> **"How do annual members and casual riders use Cyclistic bikes differently?"**

Insights gained from the analysis will support campaigns to grow Cyclistic’s membership base.

## Tools & Packages Used

- `tidyverse`: For data wrangling and visualization
- `lubridate`: For handling date-time columns
- `janitor`: For cleaning column names
- `R Markdown`: For documenting the analysis process

##  Folder Structure
Cyclistic_Case_Study/
├── output/ # Cleaned datasets
├── csv_files/ # Original CSVs
├── cyclistic_report.Rmd # R Markdown report
├── Cyclistic_report_word.docx # Word version of the final report
├── Average_ride_length_by_day.png
├── rides_per_weekday.png
└── README.md # This file


## Data Source

The dataset was provided by Motivate International Inc. under the Cyclistic brand. It includes ride details for 2019 and 2020.  
**Note:** Personal rider data is removed to ensure privacy compliance.

## Data Cleaning Steps

1. Loaded and merged 2019 and 2020 Q1 data
2. Standardized column names and data types
3. Added relevant columns like `ride_length`, `day_of_week`
4. Removed invalid data (negative ride times, missing station IDs)

## Key Analyses

### 1. **Ride Duration by User Type**
- Casual riders have significantly longer average ride lengths than members.

### 2. **Ride Frequency by Weekday**
- Members ride more frequently on weekdays, likely for commuting.
- Casual users ride more on weekends, likely for leisure.

### 3. **Average Ride Length by Day of Week**
- Casual riders take the longest rides on Thursdays and weekends.

## Key Insights

- **Casual riders = longer rides, fewer trips**
- **Members = shorter rides, more frequent usage**
- Casual users prefer weekends; members are more active on weekdays

## Recommendations

- Offer weekend membership discounts
- Promote benefits of membership via in-app nudges
- Target casual users after long trips with upgrade offers

## Report Links

- [RPubs Report](https://rpubs.com/DanielG777/1328220)  
- Word version available in the repo as `Cyclistic_report_word.docx`

## Final Deliverables

- Cleaned dataset
- Visuals (PNG charts)
- R Markdown script
- Word and HTML report
- README documentation

---

> 
