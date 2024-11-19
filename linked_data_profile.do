// Change directory
cd "D:\APHRC\GoogleDrive_ii\data_science\madiva\Project_1\Clinic_ link\data\merged_data\"

// Load matches df
import delimited "matches_df.csv", bindquote(strict) varnames(1) clear 

sort patientid
// duplicates list patientid

save "matches_df_clean.dta", replace

// Data profile
import delimited "DataProfile.csv", bindquote(strict) varnames(1) clear 

sort patientid
// duplicates list patientid

save "DataProfile_clean.dta", replace

use "matches_df_clean.dta"

merge m:m patientid using "D:\APHRC\GoogleDrive_ii\data_science\madiva\Project_1\Clinic_ link\data\merged_data\DataProfile_clean.dta", nogenerate force 

save "matches_data_profile_merged.dta", replace
