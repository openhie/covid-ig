CodeSystem: WhoCrCodeSystemReasonForTesting
Title: "Reason for Testing"
Description: "A code system of reasons to perform testing"
* insert PublisherContextDefinitional

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
* insert PublisherContextDefinitional

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

CodeSystem: WhoCrCodeSystemComorbidity
Title: "Patient Comorbidity"
Description: "Patient Comorbidity"
* insert PublisherContextDefinitional

* #PREGNANCY
    "Pregnant"
    "Patient is pregnant"
* #POSTPARTUM
    "Post-partum"
    "Patient is in the post-partum period defined as less than 6 weeks after delivery date"
* #IMMUNODEFICIENCY
    "Immunodeficiency"
    "Patient has an acquired immunodeficiency (HIV) or is treated with drugs that decrease immune response (corticoides, anti-cancer chemotherapy)"
* #CARDIOVASCULAR
    "Cardiovascular disease"
    "Patient has any cardiovascular disease, including hypertension"
* #DIABETES
    "Diabetes"
    "Patient is diabetic"
* #HEPATOPATHY
    "Liver Disease"
    "Patient has any liver diseases"
* #RENOPATHY
    "Kidney Disease"
    "Patient has any renal disease"
* #CHRONICNEUROPATHY
    "Chronic neurological or neuromuscular disease"
    "Patient has chronic neurological or neuromuscular disease"
* #MALIGNANCY
    "Malignancy"
    "Patient has any malignancy"
* #CHRONICLUNG
    "Chronic Lung Disease"
    "Patient has a chronic lung disease"

CodeSystem: WhoCrCodeSystemPregnancyTrimester
Title: "Pregnancy Trimester"
Description: "Pregnancy Trimester"
* insert PublisherContextDefinitional

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
* insert PublisherContextDefinitional

* #partial 
    "Partial" 
    "Partially complete"

CodeSystem: WhoCrCodeSystemQuestionnaireChoice
Title: "TODO"
Description: "TODO"
* insert PublisherContextDefinitional

* #other 
    "Other" 
    "Not a listed value"

CodeSystem: WhoCoPositiveNegativeUnknown
Title: "Positive/Negative/Unknown"
Description: "Positive/Negative/Unknown"
* #positive
  "Positive"
* #negative
  "Negative"
* #unknown
  "Unknown"

CodeSystem: WhoCoHealthOutcome
Title: "Health Outcome"
Description: "Health Outcome"
* #recovered_healthy
  "Recovered/Healthy"
* #not_recovered
  "Not Recovered"
* #death
  "Death"
* #unknown
  "Unknown"
* #other
  "Other"

ValueSet: WhoCrValueSetReasonForCovid19Testing
Title: "Reason for Covid-19 Testing"
Description: "TODO"
* insert PublisherContextDefinitional

* ^meta.profile[0] = $prof-sdc-valueset
* ^immutable = false

* codes from system WhoCrCodeSystemReasonForTesting

ValueSet: WhoCrValueSetAgeUnits
Title: "Patient Age Units"
Description: "Common units of patient age"
* insert PublisherContextDefinitional

* ^meta.profile[0] = $prof-sdc-valueset
* ^immutable = false

* include $UCUM#a "year"
* include $UCUM#mo "month"
* include $UCUM#d "day"

ValueSet: WhoCrValueSetSexAtBirth
Title: "Patient Sex at birth"
Description: "Patient Sex at birth"
* insert PublisherContextDefinitional

* ^meta.profile[0] = $prof-sdc-valueset
* ^immutable = false

* include $cs-gender#male "Male"
* include $cs-gender#female "Female"

ValueSet: WhoCrValueSetYesNo
Title: "Yes/No"
Description: "Yes/No"
* insert PublisherContextDefinitional

* ^meta.profile[0] = $prof-sdc-valueset
* ^immutable = false

* codes from system $cs-v2-0136 // yes/no

ValueSet: WhoCrValueSetYesNoUnk
Title: "Yes/No/Unknown"
Description: "Yes/No/Unknown Value Set"
* insert PublisherContextDefinitional

* ^meta.profile[0] = $prof-sdc-valueset
* ^immutable = false

* codes from system $cs-v2-0136 // yes/no
* include $cs-v2-0532#UNK // unknown

ValueSet: WhoCrValueSetPregnancyTrimester
Title: "Pregnancy Trimester"
Description: "Pregnancy Trimester"
* insert PublisherContextDefinitional

* ^meta.profile[0] = $prof-sdc-valueset
* ^immutable = false

* codes from system WhoCrCodeSystemPregnancyTrimester

ValueSet: WhoCrValueSetComorbidity
Title: "Comorbidity"
Description: "Comorbidity"
* insert PublisherContextDefinitional

* ^meta.profile[0] = $prof-sdc-valueset
* ^immutable = false

* codes from system WhoCrCodeSystemComorbidity

ValueSet: WhoCrValueSetPatientOutcome
Title: "Patient Outcome"
Description: "Patient Outcome"
* insert PublisherContextDefinitional

* ^meta.profile[0] = $prof-sdc-valueset
* ^immutable = false

* codes from system WhoCrCodeSystemPatientOutcome

ValueSet: WhoCrValueSetTestResult
Title:  "Test Result"
Description: "Test Result"
* insert PublisherContextDefinitional

* ^meta.profile[0] = $prof-sdc-valueset
* ^immutable = false

* include $cs-v3-ObsInterpretation#POS "Positive"
* include $cs-v3-ObsInterpretation#NEG "Negative"
* include $cs-v2-0532#UNK // unknown

ValueSet: WhoCrValueSetSubmitted
Title: "Report Submitted Yes/No/Partial"
Description: "Report Submitted Yes/No/Partial"
* insert PublisherContextDefinitional

* ^meta.profile[0] = $prof-sdc-valueset
* ^immutable = false

* codes from system $cs-v2-0136 // yes/no
* codes from system WhoCrCodeSystemSubmissionCompletion

ValueSet: WhoCrValueSetAdmin1
Title: "List of Administrative Level 1 Names (Province/State/Canton)"
Description: "List of Administrative Level 1 Names (Province/State/Canton)"
* insert PublisherContextDefinitional

* ^meta.profile[0] = $prof-sdc-valueset
* ^immutable = false

* codes from system $cs-iso3166-2

ValueSet: WhoCoValueSetPositiveNegativeUnknown
Id: who-co-positive-negative-unknown
Title: "Positive/Negative/Unknown"
Description: "Positive/Negative/Unknown"
* codes from system WhoCoPositiveNegativeUnknown

ValueSet: WhoCoValueSetHealthOutcome
Id: who-co-health-outcome
Title: "Health Outcome"
Description: "WH Co Valueset Health Outcome"
* codes from system WhoCoHealthOutcome
