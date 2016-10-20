# Exercise 3: Data Frame Practice with `dplyr`.
# Use a different appraoch to accomplish the same tasks as exercise-1


# Install devtools package: allows installations from GitHub

# Install "fueleconomy" package from GitHub
devtools::install_github("hadley/fueleconomy")

# Require/library the fueleconomy package
library(fueleconomy)
library(dplyr)
View(vehicles)
# Which Accura model has the best hwy MPG in 2015? (without method chaining)
acuras <- vehicles[vehicles$make == 'Acura',]
acuras.2015 <- acuras[acuras$year == 2015,]
acura.highest.hwy.2015 <- acuras.2015[acuras.2015$hwy == max(acuras.2015$hwy), 'model']

# Which Accura model has the best hwy MPG in 2015? (nesting functions)

# Which Accura model has the best hwy MPG in 2015? (pipe operator)
acura.highest.hwy.2015.pipe <- filter(vehicles, make == 'Acura') %>%
                                  filter(year == 2015) %>%
                                  filter(hwy == max(hwy)) %>%
                                  select(model)

### Bonus ###

# Write 3 functions, one for each approach.  Then, 
# Test how long it takes to perform each one 1000 times
