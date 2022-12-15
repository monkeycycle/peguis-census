# =================================================================
# This file configures the project by specifying filenames, loading
# packages and setting up some project-specific variables.
# =================================================================

initialize_startr(
  title = 'Peguis Census',
  author = 'Michael Pereira <mpereira@waapihk.com>',
  timezone = 'America/Winnipeg',
  should_render_notebook = TRUE,
  should_process_data = TRUE,
  should_timestamp_output_files = FALSE,
  packages = c(
    'tidyverse', 'glue', 'lubridate', 'readxl', 'feather', 'scales', 'knitr',
    'janitor', 'zoo',
    'sf', 'tidymodels',
    "ggtext", "ggannotate",
    "ggpubr", "ggtext", "showtext",
    "ggrepel",
    'gganimate'
  )
)

# Refer to your source data here. These can be either references to files in
# your `data/raw` folder, or paths to files hosted on the web. For example:

# Statistics Canada Profile Table - Peguis 1B, Indian reserve (IRI)
# https://www12.statcan.gc.ca/census-recensement/2021/dp-pd/prof/details/page.cfm?Lang=E&SearchText=Peguis%201B&DGUIDlist=2021A00054619059&GENDERlist=1,2,3&STATISTIClist=1&HEADERlist=0
statcan_census_peguis_counts.raw.path <- "https://www12.statcan.gc.ca/census-recensement/2021/dp-pd/prof/details/download-telecharger/current-actuelle.cfm?Lang=E&SearchText=Manitoba&DGUIDlist=2021A00054619059&GENDERlist=1,2,3&STATISTIClist=1&HEADERlist=0&FILETYPE=CSV"
statcan_census_peguis_rates.raw.path <- "https://www12.statcan.gc.ca/census-recensement/2021/dp-pd/prof/details/download-telecharger/current-actuelle.cfm?Lang=E&SearchText=Manitoba&DGUIDlist=2021A00054619059&GENDERlist=1,2,3&STATISTIClist=4&HEADERlist=0&FILETYPE=CSV"
statcan_census_manitoba_counts.raw.path <- "https://www12.statcan.gc.ca/census-recensement/2021/dp-pd/prof/details/download-telecharger/current-actuelle.cfm?Lang=E&SearchText=manitoba&DGUIDlist=2021A000246&GENDERlist=1,2,3&STATISTIClist=1&HEADERlist=0&FILETYPE=CSV"
statcan_census_manitoba_rates.raw.path <- "https://www12.statcan.gc.ca/census-recensement/2021/dp-pd/prof/details/download-telecharger/current-actuelle.cfm?Lang=E&SearchText=manitoba&DGUIDlist=2021A000246&GENDERlist=1,2,3&STATISTIClist=4&HEADERlist=0&FILETYPE=CSV"
