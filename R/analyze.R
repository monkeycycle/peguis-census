# =======================================================================
# This file handles the primary analysis using the tidied  data as input.
# Should never read from `dir_data_raw()`, only `dir_data_processed()`.
# =======================================================================

# sample <- read_feather(dir_data_processed('sample.feather')) %>%
#   group_by(cma) %>%
#   arrange(desc(date)) %>%
#   mutate(sale_avg_3mo = rollmean(sale_avg, k = 3, fill = NA)) %>%
#   ungroup() %>%
#   drop_na()


statcan_census_peguis_counts <-  read_feather(dir_data_processed('statcan_census_peguis_counts.feather'))
statcan_census_peguis_rates <-  read_feather(dir_data_processed('statcan_census_peguis_rates.feather'))
statcan_census_manitoba_counts <-  read_feather(dir_data_processed('statcan_census_manitoba_counts.feather'))
statcan_census_manitoba_rates <-  read_feather(dir_data_processed('statcan_census_manitoba_rates.feather'))

source(dir_src("analyze_age_characteristics.R"))
source(dir_src("analyze_income_individual.R"))

