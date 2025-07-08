# /cleaning_data.R
install.packages("tidyverse")
install.packages("janitor")
install.packages("lubridate")

#load libraries
library(tidyverse)
library(janitor)
library(lubridate)

#load CSV files from the "csv_files" folder
df_2019 <- read_csv("csv_files/Divvy_Trips_2019_Q1.csv")
df_2020 <- read_csv("csv_files/Divvy_Trips_2020_Q1.csv")

#clean column names
df_2019 <- clean_names(df_2019)
df_2020 <- clean_names(df_2020)

# Standardize the member type column name
# Check the actual column name in df_2019 (usually 'usertype')
# and rename it to match df_2020's 'member_casual'


df_2019 <- df_2019 %>%
  rename(member_casual = usertype)


#combine datasets
cyclistic_df <- bind_rows(df_2019, df_2020)


# Create new columns
cyclistic_df <- cyclistic_df %>%
  mutate(
    started_at = as.POSIXct(start_time, format = "%m/%d/%Y %H:%M", tz = "UTC"),
    ended_at = as.POSIXct(end_time, format = "%m/%d/%Y %H:%M", tz = "UTC"),
    ride_length = as.numeric(difftime(ended_at, started_at, units = "mins")),
    day_of_week = wday(started_at, label = TRUE)
  )

# Remove rows with invalid durations
cyclistic_df <- cyclistic_df %>%
  filter(ride_length > 0)

# View summary
glimpse(cyclistic_df)
summary(cyclistic_df$ride_length)

# Save cleaned data to a new CSV file in the 'output' folder
write_csv(cyclistic_df, "output/cleaned_cyclistic_data.csv")








