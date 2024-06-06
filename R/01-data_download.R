library(googlesheets4)
getwd()
survey_data <- read_sheet("https://docs.google.com/spreadsheets/d/1BXI8S9eEa1RvEtVlD083flhzyk9MJi0uyDaZ1Ad3t6U/edit?usp=sharing")
# The formatting of the csv file seems wrong and I didn't manage to do anything with it
# Therefore I cleaned the data in excel and re-imported it as a csv in data/processed
write.csv(survey_data, "survey_data_raw.csv")
saveRDS(survey_data, "survey_data_raw.rds")
