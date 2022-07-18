#!/bin/bash

# Print the whole file as is
awk '{print}' annual-enterprise-survey-2021-financial-year-provisional.csv

# Print the 4th field, also specify that , is the field separator
awk -F, '{print $4}' annual-enterprise-survey-2021-financial-year-provisional.csv

# Print the lines having "Food product manufacturing" in it
awk -F, '/Food product manufacturing/ {print $0}' annual-enterprise-survey-2021-financial-year-provisional.csv

# Print the lines where the records are starting with 2014
awk -F, '/^[2014]/' annual-enterprise-survey-2021-financial-year-provisional.csv

# Print the lines where the 'Variable_name' column has value 'Non-operating expenses' 
awk -F, '$7 ~ /Non-operating expenses/ {print $4}' annual-enterprise-survey-2021-financial-year-provisional.csv

# Print the lines where the 'Variable_name' column DOESN'T have value 'Non-operating expenses' (note the !)
awk -F, '$7 !~ /Non-operating expenses/ {print $4}' annual-enterprise-survey-2021-financial-year-provisional.csv
