# =======================================================================
# Read raw data, clean it and save it out to `dir_data_processed()` here
# before moving to analysis. If run from `run.R`, all variables generated
# in this file will be wiped after completion to keep the environment
# clean. If your process step is complex, you can break it into several
# files like so: `source(dir_src('process_files', 'process_step_1.R'))`
# =======================================================================

# sample.raw <- read_csv(sample.raw.file) %>%
#   rename(
#     cma = 'CMA',
#     date = 'Date',
#     index = 'Index',
#     pairs = 'Pairs',
#     sale_avg = 'SaleAverage',
#     mom = 'MoM',
#     yoy = 'YoY',
#     ytd = 'YTD'
#   ) %>%
#   arrange(cma, desc(date))
#
# write_feather(sample.raw, dir_data_processed('sample.feather'))


statcan_census_peguis_counts.raw <-  read_csv(statcan_census_peguis_counts.raw.path, skip = 3) %>%
  clean_names()
statcan_census_peguis_rates.raw <-  read_csv(statcan_census_peguis_rates.raw.path, skip = 3) %>%
  clean_names()
statcan_census_manitoba_counts.raw <-  read_csv(statcan_census_manitoba_counts.raw.path, skip = 3) %>%
  clean_names()
statcan_census_manitoba_rates.raw <-  read_csv(statcan_census_manitoba_rates.raw.path, skip = 3) %>%
  clean_names()


write_feather(statcan_census_peguis_counts.raw, dir_data_processed('statcan_census_peguis_counts.feather'))
write_feather(statcan_census_peguis_rates.raw, dir_data_processed('statcan_census_peguis_rates.feather'))
write_feather(statcan_census_manitoba_counts.raw, dir_data_processed('statcan_census_manitoba_counts.feather'))
write_feather(statcan_census_manitoba_rates.raw, dir_data_processed('statcan_census_manitoba_rates.feather'))

