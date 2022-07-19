# Print the whole file as is
awk '{print}' annual-enterprise-survey-2021-financial-year-provisional.csv

# Print the 4th field, also specify that , is the field separator
awk -F, '{print $4}' annual-enterprise-survey-2021-financial-year-provisional.csv

# Print more than one fields 
awk -F, '{print $2, $6}' annual-enterprise-survey-2021-financial-year-provisional.csv

# Print the lines having "Food product manufacturing" in it
awk -F, '/Food product manufacturing/ {print $0}' annual-enterprise-survey-2021-financial-year-provisional.csv

# Print the lines where the records are starting with 2014
awk -F, '/^[2014]/' annual-enterprise-survey-2021-financial-year-provisional.csv

# Print the lines where the 'Variable_name' column has value 'Non-operating expenses' 
awk -F, '$7 ~ /Non-operating expenses/ {print $4}' annual-enterprise-survey-2021-financial-year-provisional.csv

# Print the lines where the 'Variable_name' column DOESN'T have value 'Non-operating expenses' (note the !)
awk -F, '$7 !~ /Non-operating expenses/ {print $4}' annual-enterprise-survey-2021-financial-year-provisional.csv

# Logical AND using &&
awk -F, '$7 ~ /Non-operating expenses/ && $1 == 2021 {print $0}' annual-enterprise-survey-2021-financial-year-provisional.csv

# Logical OR using ||
awk -F, '$7 ~ /Non-operating expenses/ || $7 ~ /Other liabilities/ {print $0}' annual-enterprise-survey-2021-financial-year-provisional.csv

# The BEGIN and END blocks
awk -F, 'BEGIN {print "The records are being processed"} /Food product manufacturing/ {print $5} END {print "The processing has finished"}' annual-enterprise-survey-2021-financial-year-provisional.csv

# The NR variable -> it holds the record number
awk -F, '{print NR, $0}' annual-enterprise-survey-2021-financial-year-provisional.csv

# The NF variable -> it holds the number of fields present in the record
awk -F, '{print NR, $0, NF}' annual-enterprise-survey-2021-financial-year-provisional.csv

# NF can also be used to print the last field
awk -F, '{print $NF}' annual-enterprise-survey-2021-financial-year-provisional.csv

# The FILENAME variable -> it holds the name of the file being processed
awk -F, '{print NR, $3, FILENAME}' annual-enterprise-survey-2021-financial-year-provisional.csv

# If the input data has FS ":" , you can specify it as
awk 'BEGIN{FS=":"} {print $2, $3}' annual-enterprise-survey-2021-financial-year-provisional.csv

# OFS -> Output field separator | ORS -> Output record separator
awk -F, 'BEGIN {OFS="---";ORS=":"} {print $3,$7}' annual-enterprise-survey-2021-financial-year-provisional.csv

# Range of input to be processed ... record numbers 200 to 300 
awk -F, 'NR==200,NR==300 {print $3}' annual-enterprise-survey-2021-financial-year-provisional.csv

# if else
awk -F, '{if ($4 > 3000) print $0;else print "it was less than 3000"}' annual-enterprise-survey-2021-financial-year-provisional.csv

# using built-in functions
awk -F, '{print toupper($3), length($3)}' annual-enterprise-survey-2021-financial-year-provisional.csv
