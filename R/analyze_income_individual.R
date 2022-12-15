

# Individual income
census_peguis_income_individual_2020_rates <- statcan_census_peguis_rates %>%
  filter(topic == "Income of individuals in 2020") %>%
  mutate(
    geography = "Peguis"
  )

census_manitoba_income_individual_2020_rates <- statcan_census_manitoba_rates %>%
  filter(topic == "Income of individuals in 2020") %>%
  mutate(
    geography = "Manitoba"
  )


census_income_individual_2020_rates <- rbind(census_peguis_income_individual_rates, census_manitoba_income_individual_rates)
