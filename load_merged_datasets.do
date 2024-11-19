**# Bookmark #2
// --------------------------------------------------------------------------------
// Vital Signs
// --------------------------------------------------------------------------------
cd "D:\APHRC\GoogleDrive_ii\data_science\madiva\Project_1\Clinic_link\data\merged_data\"
import delimited "VitalSigns.csv", bindquote(strict) varnames(1) stripquote(yes) clear 

save "VitalSigns_cleaned.dta", replace
// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------
// Individuals
// --------------------------------------------------------------------------------
. import delimited "Individuals.csv", bindquote(strict) varnames(1) stripquote(yes) clear 

save "Individuals_cleaned.dta", replace

// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------
// Diagnoses
// --------------------------------------------------------------------------------
import delimited "diagnoses.csv", bindquote(strict) varnames(1) stripquote(yes) clear 

do "diagnoses.do"

save "Diagnoses_cleaned.dta", replace
// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------
// Merging data
cd "D:\APHRC\GoogleDrive_ii\data_science\madiva\Project_1\Clinic_link\data\merged_data\"
use "Diagnoses_cleaned.dta", replace

merge m:m patientid using "Individuals_cleaned.dta"

keep if _merge==3

save "Diagnoses_individuals_cleaned.dta", replace

do "split_data_accordingly.do" 
do "diagnoses_replace_string.do"

compress
save "Diagnoses_individuals_cleaned.dta", replace
 
// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------


