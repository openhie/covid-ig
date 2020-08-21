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
Description: "TODO"
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
Title: "TODO"
Description: "TODO"
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
Title: "TODO"
Description: "TODO"
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
* include http://unitsofmeasure.org#a "year"
* include http://unitsofmeasure.org#mo "month"
* include http://unitsofmeasure.org#d "day"

ValueSet: WhoCrValueSetSexAtBirth
Title: "Patient Sex at birth"
Description: "TODO"
* include http://hl7.org/fhir/administrative-gender#male "Male"
* include http://hl7.org/fhir/administrative-gender#female "Female"

ValueSet: WhoCrValueSetYesNo
Title: "Yes/No"
Description: "TODO"
* include http://terminology.hl7.org/CodeSystem/v2-0136#Y "Yes"
* include http://terminology.hl7.org/CodeSystem/v2-0136#N "No"

ValueSet: WhoCrValueSetYesNoUnk
Title: "Yes/No/Unknown"
Description: "TODO"
* codes from system http://terminology.hl7.org/CodeSystem/v2-0136
//* include http://terminology.hl7.org/CodeSystem/v2-0136#N "No"
* include http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown "Unknown"

ValueSet: WhoCrValueSetPregnancyTrimester
Title: "Pregnancy Trimester"
Description: "TODO"
* codes from system WhoCrCodeSystemPregnancyTrimester

ValueSet: WhoCrValueSetPatientOutcome
Title: "Patient Outcome"
Description: "TODO"
* codes from system WhoCrCodeSystemPatientOutcome

ValueSet: WhoCrValueSetTestResult
Title:  "Test Result"
Description: "TODO"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#POS "Positive"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#NEG "Negative"
* include http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown "Unknown"

ValueSet: WhoCrValueSetYesNoPartial
Title: "Yes/No/Partial"
Description: "TODO"
* include http://terminology.hl7.org/CodeSystem/v2-0136#Y "Yes"
* include http://terminology.hl7.org/CodeSystem/v2-0136#N "No"
* codes from system WhoCrCodeSystemSubmissionCompletion

ValueSet: WhoCrValueSetAdmin0
Title: "List of Administrative Level 0 Names (Countries)"
Description: "TODO"
* codes from system http://hl7.org/fhir/ValueSet/iso3166-1-3
