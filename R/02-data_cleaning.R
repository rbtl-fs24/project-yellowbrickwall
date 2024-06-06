# Couldn't import the csv data from the survey correctly. It only has two rows for some reason.
getwd()
data_raw <- read.csv2("RBtL Final Survey yellowbrickwall (cleaned).csv")

head(data_raw)

data_processed <- data_raw |>
  # Add column for number of types of waste recycled
  rowwise() |>
  mutate(recycle_number = sum(c_across(where(is.character)) == "recycle")) |>
  ungroup()|>
  # Add column for grown up in Switzerland yes/no
  mutate(grown_up_in_switzerland = case_when(
    switzerland_months == 0 ~ "yes",
    switzerland_months != 100 ~ "no"))

glimpse(data_processed)

# Save the processed data to a CSV file
write.csv2(data_processed, "../processed/data_processed.csv", row.names = FALSE)
  
