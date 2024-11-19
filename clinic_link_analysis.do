use "D:\APHRC\GoogleDrive_ii\data_science\madiva\Project_1\Clinic_ link\data\merged_data\data_sheet_matches_merged.dta", clear
// Visualizations
gen current_date = mdy(11, 5, 2024) // Replace with today's date or use Stata's `date()` function
gen dob_date = date(dob, "YMD")
gen age = (current_date - dob_date) / 365.25 // Convert from days to years
format age %2.0f // Format as an integer


scatter diastolicbp age, title("Scatter Plot of Diastolic BP vs Age")
