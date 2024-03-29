iglu: Interpreting of data from Continuous Glucose Monitors (CGMs)
====================================================================

The R package 'iglu' provides functions for outputting relevant metrics for data collected from Continuous Glucose Monitors (CGM). For reference, see ["Interpretation of continuous glucose monitoring data: glycemic variability and quality of glycemic control." Rodbard (2009)](https://www.ncbi.nlm.nih.gov/pubmed/19469679).

iglu comes with two example datasets: example_data_1_subject and example_data_5_subject. Each dataset follows the structure iglu's functions are designed around. Note that the 1 subject data is a subset of the 5 subject data. See the examples below for loading and using the data. 

Installation
------------

``` install
# if all dependencies are installed
devtools::install_github("stevebroll/iglu")

# if dependencies are missing
install.packages(c("lubridate",
                   "intervals",
                   "ggplot2"))
devtools::install_github('swihart/lasagnar') # for lasagna plots (multi subject)
```

Example
-------

``` r
library(iglu)
data(example_data_1_subject) # Load single subject data
## Plot data

# Use plot on glucose vector for histogram
plot_glu(example_data_1_subject$gl)

# Use plot on dataframe with time and glucose values for time series plot
plot_glu(example_data_1_subject)

# Summary statistics and some metrics
summary_glu(example_data_1_subject)

in_range_percent(example_data_1_subject)

above_percent(example_data_1_subject, targets = c(80,140,200,250))

j_index(example_data_1_subject)

conga(example_data_1_subject)

# Load multiple subject data
data(example_data_5_subject)

below_percent(example_data_5_subject, targets = c(80,170,260))

mage(example_data_5_subject)



```
