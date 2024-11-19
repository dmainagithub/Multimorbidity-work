// ------------------------------------------------------------------------------
// Clean data sheet
// ------------------------------------------------------------------------------
// Loop through all variables in the dataset
foreach var of varlist _all {
    // Check if the variable is a string type
    if !missing(substr(`"`: type `var''`'"', 1, 1)) & substr(`"`: type `var''`'"', 1, 1) == "s" {
        // Replace 'Null' with '.' in each string variable
        replace `var' = "." if `var' == "NULL"
    }
}

// ------------------------------------------------------------------------------
// Define labels
// ------------------------------------------------------------------------------
#delimit
;
label define healthfacility
1 "Korogocho"
2 "Viwandani"
3 "Lunga Lunga Health Center"
4 "Mukuru Health Center"
5 "Baba Dogo"
6 "Kariobangi Health Centre"
7 "Korogocho Health Centre"
;
#delimit cr

label define gender 1 "Male" 2 "Female"
label define interaction 1 "Clinic Visit"

#delimit
;
label define patient_category
1 "BOOKED"
2 "BOOKED&RAISEDBP"
3 "RAISEDBP"
4 "UNBOOKED"
5 "UNBOOKED&RAISEDBP"
;
#delimit cr

label define yes_no 1 "Yes" 0 "No"

// ------------------------------------------------------------------------------
// Replace values
// ------------------------------------------------------------------------------
replace healthfacility = regexr(healthfacility, "Lungalunga Health Center", "Lunga Lunga Health Center")
replace healthfacility = regexr(healthfacility, "Lunga Lunga Health Center", "3")
replace healthfacility = regexr(healthfacility, "Mukuru Health Center", "4")
replace healthfacility = regexr(healthfacility, "Baba Dogo", "5")
replace healthfacility = regexr(healthfacility, "Kariobangi Health Centre", "6")
replace healthfacility = regexr(healthfacility, "Korogocho Health Centre", "7")
replace healthfacility = regexr(healthfacility, "Korogocho", "1")
replace healthfacility = regexr(healthfacility, "Viwandani", "2")

replace sex = regexr(sex, "FEMALE", "2")
replace sex = regexr(sex, "MALE", "1")

replace typeofinteraction = regexr(typeofinteraction, "Clinic Visit", "1")

replace patientcategory = regexr(patientcategory, "UNBOOKED&RAISEDBP", "5")
replace patientcategory = regexr(patientcategory, "BOOKED&RAISEDBP", "2")
replace patientcategory = regexr(patientcategory, "RAISEDBP", "3")
replace patientcategory = regexr(patientcategory, "UNBOOKED", "4")
replace patientcategory = regexr(patientcategory, "BOOKED", "1")

local test_var asthma diabetes epilepsy hiv hypertension raised_bp mental_illness tb other_illness given_medication referred checkup_appmt seen_by_dr
local j = 1
foreach v of local test_var {
	replace `v' = regexr(`v', "yes", "1")
	replace `v' = regexr(`v', "no", "0")
	local ++j
}

replace diastolicbp = regexr(diastolicbp, "'63", "63")
replace diastolicbp = regexr(diastolicbp, "64acu", "64")

// weight  pulse
replace weight = regexr(weight, "'68", "68")
replace weight = regexr(weight, "O59", "59")
replace weight="50" if patientid==500817 & pulse==91 & dateentered=="2024-09-16 12:14:38.050" //replace weight = regexr(weight, "\50", "50")
replace weight = regexr(weight, "UTI", "")

// height
replace height = regexr(height, "ND", "")

// bloodglucose
replace bloodglucose = regexr(bloodglucose, "ND", "")
replace bloodglucose = regexr(bloodglucose, "7MM/L", "7")

// ------------------------------------------------------------------------------
// Destring
// ------------------------------------------------------------------------------
destring, replace

// ------------------------------------------------------------------------------
label value healthfacility healthfacility
label value sex gender
label value typeofinteraction interaction
label value patientcategory patient_category

local test_var asthma diabetes epilepsy hiv hypertension raised_bp mental_illness tb other_illness given_medication referred checkup_appmt seen_by_dr
local j = 1
foreach v of local test_var {
	label value `v' yes_no
	local ++j
}

// ------------------------------------------------------------------------------
// ------------------------------------------------------------------------------
// Label variables

label variable diagnosis1 "Diagnosis 1"
label variable diagnosis2 "Diagnosis 2"
label variable diagnosis3 "Diagnosis 3"
label variable diagnosis4 "Diagnosis 4"
label variable diagnosis5 "Diagnosis 5"

label variable asthma "Has asthma"
label variable diabetes "Has diabetes" 
label variable epilepsy "Has epilepsy" 
label variable hiv "Has HIV" 
label variable hypertension "Has hypertension" 
label variable raised_bp "Has raised blood pressure" 
label variable mental_illness "Has mental illness" 
label variable tb  "Has TB"
label variable other_illness "Has other illness" 
label variable visit_note "Visit note"

label variable given_medication "Given medication"
label variable referred "Referred"
label variable checkup_appmt "Checkup appointment"
label variable seen_by_dr "Seen by a doctor"
label variable return_date "Return date"
label variable sms_reminder "SMS reminder"

// phone_reminder visit_reminder other_reminder no_contact_reminder sms_fu sms_fu_outcome phone_fu phone_fu_outcome visit_fu visit_fu_outcome chw_fu chw_fu_outcome identifiers_data_typist date_identifiers_entered lhw_name data_typist



