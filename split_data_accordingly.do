// inspect the variable where there are multiple diagnoses
list diagnoses if strpos(diagnoses, "AND") > 0
list diagnoses if strpos(diagnoses, "/") > 0 & diagnoses != "C/S"

// --------------------------------------------------------------------------------
// Sort by patientid and visitdate (this will help pick unique records)
// --------------------------------------------------------------------------------
sort patientid visitdate
// br patientid visitdate diagnoses * if strpos(diagnoses, "/") > 0 | strpos(diagnoses, " AND ") > 0
// // Helps you see multiple diagnoses
// tab diagnoses if (strpos(diagnoses, "/") > 0 & diagnoses != "C/S") | strpos(diagnoses, " AND ") > 0  | strpos(diagnoses, " & ") > 0 | strpos(diagnoses, " 2 ") > 0
// --------------------------------------------------------------------------------
// Real processing of the diagnoses column
// --------------------------------------------------------------------------------
// step 1 ======================================================================
generate diag_1 = ""
generate diag_2 = ""
generate diag_3 = ""
generate diag_4 = ""
generate diagnoses_ii = diagnoses

// step 2 (i): Standardize Delimiters Replace "AND" and "/" with a consistent delimiter, such as a comma
// Look for diagnoses with the following substring (tab diagnoses if strpos(diagnoses, "R/O"))
replace diagnoses_ii = subinstr(diagnoses_ii, "BACTERIAL R/O GE", "BACTERIAL", .)
replace diagnoses_ii = subinstr(diagnoses_ii, "BACTERIAL R/O MARALIA", "BACTERIAL", .)
replace diagnoses_ii = subinstr(diagnoses_ii, "CTD R/O IN PREGNANCY", "Connective tissue diseases", .)
replace diagnoses_ii = subinstr(diagnoses_ii, "KNOWN HTN R/O DM", "Hypertension", .)
replace diagnoses_ii = subinstr(diagnoses_ii, "PUD R/O BACTERIAL", "Peptic ulcer disease", .)
replace diagnoses_ii = subinstr(diagnoses_ii, "UTI R/O PID", "UTI", .)
replace diagnoses_ii = subinstr(diagnoses_ii, "V/D", "STI", .)
replace diagnoses_ii = subinstr(diagnoses_ii, "MISCARRIAGE 4/12", "MISCARRIAGE", .)
replace diagnoses_ii = subinstr(diagnoses_ii, "PV/CANDID", "Vaginal Candidiasis", .)
replace diagnoses_ii = subinstr(diagnoses_ii, "DEH", "Dysplasia epiphysealis hemimelica", .) //A rare disease
replace diagnoses_ii = subinstr(diagnoses_ii, "KNOWN HTN/DM", "Hypertension/Diabetes", .) //A rare disease
replace diagnoses_ii = subinstr(diagnoses_ii, "SOFT TISSUE INJURY /20 ASSAULT", "SOFT TISSUE INJURY", .)
replace diagnoses_ii = subinstr(diagnoses_ii, "ST1 2 ASSAULT", "STI 2 ASSAULT", .)


replace diagnoses_ii = subinstr(diagnoses_ii, "C/S", "Caesarean Section", .)
replace diagnoses_ii = subinstr(diagnoses_ii, "HTN", "Hypertension", .)
replace diagnoses_ii = subinstr(diagnoses_ii, "/GE", "/Gastroenteritis", .)
replace diagnoses_ii = subinstr(diagnoses_ii, "GE/", "/Gastroenteritis/", .)
replace diagnoses_ii = subinstr(diagnoses_ii, "TYPE 2 DM", "T2DM", .)
replace diagnoses_ii = subinstr(diagnoses_ii, "PUD", "Peptic ulcer disease", .)
replace diagnoses_ii = subinstr(diagnoses_ii, "RTA", "Renal tubular acidosis", .)
replace diagnoses_ii = subinstr(diagnoses_ii, " 2 TO ", " 2 ", .)
replace diagnoses_ii = subinstr(diagnoses_ii, "PID", "Pelvic inflammatory disease", .)

// step 2 (ii): Standardize Delimiters Replace "AND" and "/" with a consistent delimiter, such as a comma
replace diagnoses_ii = subinstr(diagnoses_ii, " AND ", ",", .)
replace diagnoses_ii = subinstr(diagnoses_ii, "/", ",", .) 
replace diagnoses_ii = subinstr(diagnoses_ii, " 2 ", ",", .) 
replace diagnoses_ii = subinstr(diagnoses_ii, " & ", ",", .)
// step 3: Split Diagnoses into Separate Variables Use the split command to split the diagnoses into multiple variables:
split diagnoses_ii, parse(",") gen(diag)
// step 4: Fill the New Columns Update the diag_1, diag_2, etc., with the values from diag1, diag2, etc.:
replace diag_1 = diag1
replace diag_2 = diag2
replace diag_3 = diag3
// replace diag_4 = diag4
// br diagnoses diagnoses_ii diag1 diag2 diag3 if (strpos(diagnoses, "/") > 0 & diagnoses != "C/S") | strpos(diagnoses, " AND ") > 0  | strpos(diagnoses, " & ") > 0 | strpos(diagnoses, " 2 ") > 0

sort diagnoses_ii
// --------------------------------------------------------------------------------
// --------------------------------------------------------------------------------

//
// // Picking a variable I am interested in
// clonevar Diagnoses_temp = diagnoses
//
// split Diagnoses_temp, parse(" AND ") generate(Diagnosis_part)
//
//
// gen id = _n  // Create an ID variable
// reshape long Diagnosis_part, i(id) j(part_num)
//
// drop if Diagnosis_part == ""
// rename Diagnosis_part Diagnoses



