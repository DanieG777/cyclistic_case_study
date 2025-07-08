# analysis script

#average ride length for each user type
cyclistic_df %>%
  group_by(member_casual) %>%
  summarise(
    average_ride_length = mean(ride_length),
    median_ride_length = median(ride_length),
    max_ride_length = max(ride_length),
    min_ride_length = min(ride_length)
  )
#How many rides are taken by each user type per weekday
cyclistic_df %>%
  group_by(member_casual, day_of_week) %>%
  summarise(number_of_rides = n()) %>%
  arrange(member_casual, day_of_week)


#What is the average ride length by day of week for each user type?
cyclistic_df %>%
  group_by(member_casual, day_of_week) %>%
  summarise(average_ride_length = mean(ride_length)) %>%
  arrange(member_casual, day_of_week)



library(ggplot2)

# Number of rides per weekday
cyclistic_df %>%
  group_by(member_casual, day_of_week) %>%
  summarise(rides = n()) %>%
  ggplot(aes(x = day_of_week, y = rides, fill = member_casual)) +
  geom_col(position = "dodge") +
  labs(title = "Number of Rides per Day by User Type",
       x = "Day of Week", y = "Number of Rides") +
  theme_minimal()


#Average Ride length by Day of Week
cyclistic_df %>%
  group_by(member_casual, day_of_week) %>%
  summarise(avg_ride_length = mean(ride_length)) %>%
  ggplot(aes(x = day_of_week, y = avg_ride_length, fill = member_casual)) +
  geom_col(position = "dodge") +
  labs(
    title = "Average Ride Length by Day of Week",
    subtitle = "Comparison of casual riders vs. members",
    x = "Day of Week",
    y = "Average Ride Length (minutes)",
    fill = "User Type"
  ) +
  theme_minimal()
