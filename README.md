# Data Visualization with ggplot in R

## Description
This repository contains code snippets for creating visualizations using ggplot2, a popular data visualization package in R. The examples cover various aspects, including aesthetics, geoms, facets, labels, and annotations.

## Installation
To run the code, install the Rstudio on desktop or use rstudio cloud and install tidyverse package by running the following commands step by step:

```R
# Install tidyverse package
install.packages("tidyverse")

# Load the tidyverse package
library(tidyverse)

# Load ggplot2
library(ggplot2)
```

## Examples
Explore different ggplot functions through step-by-step examples. Each code snippet demonstrates a specific aspect of data visualization using the Palmerpenguins and Diamonds datasets.

- Scatter Plot:
  ```R
  ggplot(data=penguins) + geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g))
  ```

- Customized Scatter Plot:
  ```R
  ggplot(data=penguins) + 
    geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, color=species, shape=species, size=species))
  ```

- Bar Chart:
  ```R
  ggplot(data=diamonds) + geom_bar(mapping=aes(x=cut))
  ```

- Faceted Scatter Plot:
  ```R
  ggplot(data=penguins) + 
    geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, color=species)) +
    facet_wrap(~species)
  ```

- Adding Labels and Annotations:
  ```R
  ggplot(data=penguins) + 
    geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, color=species)) +
    labs(title="Palmer Penguins: Body Mass Vs Flipper Length", subtitle="Sample of three penguin species", caption="Data Collected by Dr.Kristen Gorman") +
    annotate("text", x=220, y=3500, label="The Gentoos are the largest", color="purple", fontface="bold", size=4.5, angle=25)
  ```

Feel free to use and modify these examples for your data visualization projects. Credits to the Google Data Analysis course on Coursera (Course7-Module4) for reference.
