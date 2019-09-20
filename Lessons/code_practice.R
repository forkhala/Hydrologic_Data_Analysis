### dplyr::group_by()

# grouping doesn't change how the data looks (apart from listing how it's grouped):
by_cyl <- mtcars %>% group_by(cyl)
by_cyl

# Each call to summarise() removes a layer of grouping
by_vs_am <- mtcars %>% group_by(vs, am)
by_vs <- by_vs_am %>% summarise(n = n())
by_vs

# By default, group_by overrides existing grouping
by_cyl %>%
  group_by(vs, am)

# Use add = TRUE to instead append
by_cyl %>%
  group_by(vs, am, add = TRUE)