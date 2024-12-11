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




