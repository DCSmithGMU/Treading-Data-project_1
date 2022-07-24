# *****************************************************
# HEADER ----------------------------------------------
#
# Assignment: ASSIGNMENT NAME
# Author: Daniel Smith 
# Course ID: COURSE, SECTION
# Instructor: PROFESSOR NAME
# Date: DATE 
#
# Script Name: FULL SCRIPT/ASSIGNMENT NAME
#
# Script Description: 
#    
#   TBD
#   TBD
#
# Notes: 
# 
# Link to original data source: LINK
# 
#
# TODO - Data description
#   Include description of variables when relevent
#
# *****************************************************

# SET WORKING DIRECTORY -------------------------------
setwd("D:/Documents/Code/r/FOLDERNAME")

# SAVE ENVIRONMENT VARIABLES---------------------------
save.image("D:/Documents/Code/r/FOLDERNAME/PROJECTNAME.RData")

# SET OPTIONS -----------------------------------------
# No options for this script

# INSTALL PACKAGES & LOAD LIBRARIES -------------------
# tidyverse contains multiple packages that will be useful including:
# readr- reading and importing files
# tidyr- facilitates tidy data and piping
# dplyr- data manipulation/wrangling/cleaning
# ggplot2- creating graphics/plots
suppressPackageStartupMessages(library(tidyverse))

# Library to support Dependency Modeling
suppressPackageStartupMessages(library(arules))
suppressPackageStartupMessages(library(arulesViz))

# BEGIN ASSIGNMENT ------------------------------------

# PART 1- IMPORT DATA AND DATA PREP--------------------
df <- read.csv("./df.csv")
glimpse(df)


## Addressing variable types --------------------------


# PART 2- EXPLORATORY DATA ANALYSIS -------------------

## Summary Statistics for Continuous Variables --------

### Summary statistics for VARIBALE_1 -----------------
heart_df %>% 
  summarize(
    mean_age = mean(VAR1),
    std_dev_age = sd(VAR1),
    median_age = median(VAR1),
    iqr_age = IQR(VAR1),    
    min_age = min(VAR1),
    max_age = max(VAR1),
    count = n(),
    na_count = sum(is.na(DF$VAR1))
  )
# OBSERVATIONS HERE

## EDA Plots ------------------------------------------

### Histogram of VAR1 -------------------------

## EDA Findings ---------------------------------------

# PART 3- PRINCIPLE COMPONENT ANALYSIS ----------------

# PART 4- MODELING


## Prep for a TYPE-OF-MODEL-HERE Model ------------------------


## Imputing Data --------------------------------------

## Factorize Variables

### Define a function to generate discrete elements from continuous data
discr <- function(x) cut(x, breaks=4, labels=c("low","medLow","medHigh", "high"))




