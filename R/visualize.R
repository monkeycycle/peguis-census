# =======================================================================
# Graphics. Use the `write_plot` function to write the plot directly
# to the `plots/` folder, using the variable name as the filename.
# =======================================================================

# plot_house_price_change <- sample %>%
#   filter(cma != 'C11') %>%
#   ggplot(aes(x = reorder(cma, yoy), y = yoy)) +
#   geom_bar(colour = 'white', stat = 'identity') +
#   scale_y_continuous(expand = c(0, 0), limits = c(0, 25)) +
#   coord_flip() +
#   labs(
#     title = 'Year-over-year house price change in Canada\'s biggest cities',
#     caption = 'THE GLOBE AND MAIL, SOURCE: TERANET-NATIONAL BANK',
#     x = '',
#     y = ''
#   ) +
#   theme_classic()
#
# plot_house_price_change
#
# write_plot(plot_house_price_change)


census_population_age_rates_tall <- census_population_age_rates %>%
  select(-total) %>%
  pivot_longer(
    cols=c(men, women),
    names_to = "gender",
    values_to = "percent"
  )


p_population_age <- ggplot(census_population_age_rates_tall,
                           aes(x=age_group,
                               y=ifelse(gender=="men", -percent, percent),
                               colour=gender,
                               fill=gender)
                           ) +
  geom_bar(stat = "identity") +
  scale_colour_manual(values = c("#5d7b7c", "#c9a790"), labels = c("Men", "Women")) +
  scale_fill_manual(values = c("#5d7b7c", "#c9a790"), labels = c("Men", "Women")) +
  scale_y_continuous(labels = abs, limits = max(census_population_age_rates_tall$percent + 5) * c(-1,1)) +
  coord_flip() +
  labs(
    title = "Peguis First Nation age groups",
    subtitle = "",
    x="Age",
    y="Percent of population",
    caption="Source: Statistics Canada, Census Profile (98-316-X2021001)"
  ) +
  ggthemes::theme_few() +
  theme_waapihk(base_family = "Open Sans") +
  theme(
    legend.position = c(.5,.95),
    legend.text = ggplot2::element_text(size = 10),
  ) +
  facet_wrap(~ geography)


plot_population_age <- finalize_plot(plot_name = p_population_age,
                                   save_filepath = dir_plots("plot_population_age.png"),
                                   source = "Source: Statistics Canada, Census Profile (98-316-X2021001)",
                                   width_pixels = 640,
                                   height_pixels = 640)




