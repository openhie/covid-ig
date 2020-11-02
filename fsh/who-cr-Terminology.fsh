CodeSystem: WhoCrCodeSystemReasonForTesting
Title: "Reason for Testing"
Description: "A code system of reasons to perform testing"
* #CASE_CONTACT     
    "Contact of a case" 
    "Contact of a case"
* #SEEKING_HC       
    "Ill Seeking Healthcare due to suspicion of COVID-19" 
    "Ill Seeking Healthcare due to suspicion of COVID-19"
* #POE_DETECTION    
    "Detected at point of entry" 
    "Detected at point of entry" 
* #REPATRIATION     
    "Repatriation" 
    "Repatriation"
* #SURVEILLANCE
    "Routine respiratory disease surveillance systems (e.g. influenza)" 
    "Routine respiratory disease surveillance systems (e.g. influenza)"
* #UNKNOWN 
    "Unknown" 
    "Unknown"

CodeSystem: WhoCrCodeSystemPatientOutcome
Title: "Patient Outcome"
Description: "Patient Outcome"
* #RECOVERED
    "Recovered/Healthy"
    "Recovered/Healthy"
* #NOTRECOVERED
    "Not recovered"
    "Not recovered"
* #DEATH
    "Death"
    "Death"
* #UNKNOWN
    "Unknown"
    "Unknown"
* #OTHER
    "Other"
    "Other"

CodeSystem: WhoCrCodeSystemPregnancyTrimester
Title: "Pregnancy Trimester"
Description: "Pregnancy Trimester"
* #first 
    "First" 
    "First Trimester"
* #second 
    "Second" 
    "Second Trimester"
* #third 
    "Third" 
    "Third Trimester" 

CodeSystem: WhoCrCodeSystemSubmissionCompletion
Title: "Submission Completion Status"
Description: "Submission Completion Status"
* #partial 
    "Partial" 
    "Partially complete"


ValueSet: WhoCrValueSetReasonForCovid19Testing
Title: "Reason for Covid-19 Testing"
Description: "TODO"
* codes from system WhoCrCodeSystemReasonForTesting

ValueSet: WhoCrValueSetAgeUnits
Title: "Patient Age Units"
Description: "Common units of patient age"
* include $UCUM#a "year"
* include $UCUM#mo "month"
* include $UCUM#d "day"

ValueSet: WhoCrValueSetSexAtBirth
Title: "Patient Sex at birth"
Description: "Patient Sex at birth"
* include $cs-gender#male "Male"
* include $cs-gender#female "Female"

ValueSet: WhoCrValueSetYesNo
Title: "Yes/No"
Description: "Yes/No"
* codes from system $cs-v2-0136 // yes/no

ValueSet: WhoCrValueSetYesNoUnk
Title: "Yes/No/Unknown"
Description: "Yes/No/Unknown Value Set"
* codes from system $cs-v2-0136 // yes/no
* include $cs-v2-0532#UNK // unknown

ValueSet: WhoCrValueSetPregnancyTrimester
Title: "Pregnancy Trimester"
Description: "Pregnancy Trimester"
* codes from system WhoCrCodeSystemPregnancyTrimester

ValueSet: WhoCrValueSetPatientOutcome
Title: "Patient Outcome"
Description: "Patient Outcome"
* codes from system WhoCrCodeSystemPatientOutcome

ValueSet: WhoCrValueSetTestResult
Title:  "Test Result"
Description: "Test Result"
* include $cs-v3-ObsInterpretation#POS "Positive"
* include $cs-v3-ObsInterpretation#NEG "Negative"
* include $cs-v2-0532#UNK // unknown

ValueSet: WhoCrValueSetSubmitted
Title: "Report Submitted Yes/No/Partial"
Description: "Report Submitted Yes/No/Partial"
* codes from system $cs-v2-0136 // yes/no
* codes from system WhoCrCodeSystemSubmissionCompletion

ValueSet: WhoCrValueSetAdmin0
Title: "List of Administrative Level 0 Names (Countries)"
Description: "List of Administrative Level 0 Names (Countries)"
* codes from valueset $vs-iso3166-1-2

ValueSet: WhoCrValueSetAdmin1
Title: "List of Administrative Level 1 Names (Province/State/Canton)"
Description: "List of Administrative Level 1 Names (Province/State/Canton)"
* codes from system $cs-iso3166-2
