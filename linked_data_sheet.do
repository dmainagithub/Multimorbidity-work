// Change directory
cd "D:\APHRC\GoogleDrive_ii\data_science\madiva\Project_1\Clinic_ link\data\merged_data\"

// Load matches df
import delimited "matches_df.csv", bindquote(strict) varnames(1) clear 

sort patientid
// duplicates list patientid

save "matches_df_clean.dta", replace

// Data sheet
import delimited "DataSheet.csv", bindquote(strict) varnames(1) clear 

sort patientid
// duplicates list patientid

save "DataSheet_clean.dta", replace

use "matches_df_clean.dta"

merge m:m patientid using "D:\APHRC\GoogleDrive_ii\data_science\madiva\Project_1\Clinic_ link\data\merged_data\DataSheet_clean.dta", nogenerate force
 
do "clean_data_sheet.do"

sort adssid

save "data_sheet_matches_merged.dta", replace
