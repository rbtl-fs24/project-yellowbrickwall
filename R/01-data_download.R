library(googlesheets4)
getwd()
survey_data <- read_sheet("https://docs.google.com/spreadsheets/d/1BXI8S9eEa1RvEtVlD083flhzyk9MJi0uyDaZ1Ad3t6U/edit?usp=sharing")

write.csv(survey_data, "survey_data_raw.csv")
saveRDS(survey_data, "survey_data_raw.rds")
# The formatting of the csv file comes out wrong (only 1 row)
# Therefore I have downloaded the original responses as a .csv file from Google Forms (RBtL Final Survey yellowbrickwall.csv)
