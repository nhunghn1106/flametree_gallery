# install.packages('flametree')
library(flametree)

# your name, without spaces or special character
name <- "Sarah"

# pick one seed
this_seed <- 42

# pick some colours
shades <- c("cyan3", "red4", "orange2", "yellow")

# data structure defining the trees
dat <- flametree_grow(seed = this_seed, time = 10, trees = 10)

# draw the plot
tree <- dat %>%
  flametree_plot(
    background = "antiquewhite",
    palette = shades,
    style = "nativeflora"
  )

tree
# save the plot
flametree_save(tree, filename = paste0("fig/tree_", name, ".png"))

