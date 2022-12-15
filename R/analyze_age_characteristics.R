
# Age characteristics
census_peguis_population_age_rates <- statcan_census_peguis_rates %>%
  filter(topic == "Age characteristics") %>%
  mutate(
    geography = "Peguis"
  )

census_manitoba_population_age_rates <- statcan_census_manitoba_rates %>%
  filter(topic == "Age characteristics") %>%
  mutate(
    geography = "Manitoba"
  )

census_population_age_rates <-  rbind(census_peguis_population_age_rates, census_manitoba_population_age_rates) %>%
  filter(characteristic != "Total - Age groups of the population - 100% data") %>%
  filter(characteristic != "Total - Distribution (%) of the population by broad age groups - 100% data") %>%
  filter(characteristic != "Average age of the population") %>%
  filter(characteristic != "Median age of the population") %>%
  filter(characteristic != "0 to 14 years") %>%
  filter(characteristic != "15 to 64 years") %>%
  filter(characteristic != "65 years and over") %>%
  filter(characteristic != "85 years and over") %>%
  select(
    -topic,
    -note,
    -total_flag,
    -men_flag,
    -women_flag,
    -x10
  ) %>%
  rename(
    "age_group" = "characteristic"
  )


census_population_age_rates$age_group <- ordered(census_population_age_rates$age_group, levels = c(

  "0 to 4 years",
  "5 to 9 years",
  "10 to 14 years",
  "15 to 19 years",
  "20 to 24 years",
  "25 to 29 years",
  "30 to 34 years",
  "35 to 39 years",
  "40 to 44 years",
  "45 to 49 years",
  "50 to 54 years",
  "55 to 59 years",
  "60 to 64 years",
  "65 to 69 years",
  "70 to 74 years",
  "75 to 79 years",
  "80 to 84 years",
  "85 to 89 years",
  "90 to 94 years",
  "95 to 99 years",
  "100 years and over"
))


