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

do "clean_individuals.do"

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
drop if patientid==""
drop if patientid=="12882/18"
destring patientid, replace

merge m:m patientid using "Individuals_cleaned.dta"

keep if _merge==3

save "Diagnoses_individuals_cleaned.dta", replace

do "split_data_accordingly.do" 
do "diagnoses_replace_string.do"

compress
save "Diagnoses_individuals_cleaned.dta", replace
outsheet using "Diagnoses_individuals_cleaned.csv", replace comma

// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------

keep patientid healthfacility visitdate diag1 diag2 diag3
drop if missing(diag1)

* Preserve additional variables during the reshape
* Reshape the dataset, keeping other variables constant
reshape long diag, i(patientid visitdate) j(diag_type)

* Drop rows where diagnoses are missing
drop if missing(diag)

* Save reshaped data
save "diagnoses_individuals_long.dta", replace

* View the reshaped data
list
 
// --------------------------------------------------------------------------------


// reshape long Diagnosis, i(ID Date) j(Diagnosis_Type) string

* Drop rows with missing values in the Diagnosis column
drop if missing(Diagnosis)

* Save the long-format dataset
save "diagnoses_long.dta", replace

* Verify the reshaped data
list

// --------------------------------------------------------------------------------
// Git hub work
// git add *.do
// git commit -m "Added Stata do-files for analysis"
// git push origin main


// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------


