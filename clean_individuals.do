// Clean individual dataset
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
// Process the health facility variable
// ------------------------------------------------------------------------------
replace healthfacility = regexr(healthfacility, "Lungalunga Health Center", "Lunga Lunga Health Center")
replace healthfacility = regexr(healthfacility, "Lunga Lunga Health Center", "3")
replace healthfacility = regexr(healthfacility, "Mukuru Health Center", "4")
replace healthfacility = regexr(healthfacility, "Baba Dogo", "5")
replace healthfacility = regexr(healthfacility, "Kariobangi Health Centre", "6")
replace healthfacility = regexr(healthfacility, "Korogocho Health Centre", "7")
// replace healthfacility = regexr(healthfacility, "Korogocho", "1")
// replace healthfacility = regexr(healthfacility, "Viwandani", "2")
// Just work on the health facility name entered in the employvariables
// tab employer if healthfacility!="3" & healthfacility!="4" & healthfacility!="5" & healthfacility!="6" & healthfacility!="9"
// ------------------------------------------------------------------------------
// REUBEN HEALTH CENTRE GOK (8)
// REUBEN HEALTH CENTRE FBO (9)
// ------------------------------------------------------------------------------
replace healthfacility="REUBEN HEALTH CENTRE GOK"  if regexm( employer , "GOK|G.O.K|G.O,K")
replace healthfacility="REUBEN HEALTH CENTRE FBO"  if regexm( employer , "FBO")
replace healthfacility="REUBEN HEALTH CENTRE FBO" if employer=="REUBEN HEALTH CENTRE" | employer=="RUBEN HEALTH CENTRE" | employer=="RUBEN HEATH CENTRE" | employer=="RUBEN HELATH CENTRE"  | employer=="MUKURU KWA REUBEN" | employer=="MUKURU KWA RUBEN" | employer=="ERUBEN HEALTH CENTRE"
// ------------------------------------------------------------------------------
// KWARE (10)
// tab employer if regexm( employer , "KWARE")
// ------------------------------------------------------------------------------
replace healthfacility="KWARE DISPENSARY"  if regexm( employer , "KWARE")
// ------------------------------------------------------------------------------
// NJENGA (11)
// ------------------------------------------------------------------------------
// tab employer if regexm( employer , "NJENGA")
replace healthfacility="NJENGA LEVEL 4 HOSPITAL"  if regexm( employer , "NJENGA")
// ------------------------------------------------------------------------------
replace healthfacility = regexr(healthfacility, "REUBEN HEALTH CENTRE GOK", "8")
replace healthfacility = regexr(healthfacility, "REUBEN HEALTH CENTRE FBO", "9")
replace healthfacility = regexr(healthfacility, "KWARE DISPENSARY", "10")
replace healthfacility = regexr(healthfacility, "NJENGA LEVEL 4 HOSPITAL", "11")
// ------------------------------------------------------------------------------
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
label define yes_no 1 "Yes" 0 "No"

replace sex = regexr(sex, "FEMALE", "2")
replace sex = regexr(sex, "MALE", "1")

// ------------------------------------------------------------------------------
local test_var asthma diabetes epilepsy hiv hypertension raised_bp mental_illness tb other_illness given_medication referred checkup_appmt seen_by_dr
local j = 1
foreach v of local test_var {
	replace `v' = regexr(`v', "yes", "1")
	replace `v' = regexr(`v', "no", "0")
	local ++j
}


