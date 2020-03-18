setwd("~/Dropbox/Thamnophilidae_PAPER/R_analyses/")
library(MASS)
library(tidyverse)
library(knitr)
library(FactoMineR)
library(factoextra)
library(corrplot)
library(mda)
library(data.table)
library(caret)
library(RColorBrewer)
library(ape)
library(geiger)
library(phytools)

select <- dplyr::select


# 1. Reading suboscine AOS tree
tre<-read.tree("Thamnophilidae_T400.tree")

# 2. Reading datasets
ecology <- read.table("ecological_traits_by_species.txt", header = TRUE, row.names = 1)
morpho <- read.table("morpho_by_species.txt", header = TRUE, row.names =1)
rates.dist <- read.table("rates_and_distribution_by_species.txt", header = TRUE, row.names = 1)
plumage <- read.table("plumage_specs_by_species.txt", header = TRUE, row.names = 1)
fem.voc <- read.table("females_vocalizations_by_species.txt", header = TRUE, row.names = 1)
male.voc <- read.table("males_vocalizations_by_species.txt", header = TRUE, row.names = 1)

# 3. Checking names in the datasets and tree
name.check(tre,ecology)
name.check(tre,morpho)
name.check(tre,rates.dist)
name.check(tre,plumage)
name.check(tre,fem.voc)
name.check(tre,male.voc)
