Instance: WhoCrQuestionnaireResponseBasic
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "Who Cr Questionnaire Response Basic"
Description: "Questionnaire response example"
* identifier.system = "http://test.org/response-id"
* identifier.value = "1111"
* questionnaire = Canonical(WhoCrQuestionnaireCovid19Surveillance)
* status = #completed
* authored = "2021-01-20T11:29:52+02:00"
* author = Reference(WhoCrPractitionerExample)

* item[+].linkId  = "report_country"
* item[=].text    = "Reporting country:"
* item[=].definition    = "http://openhie.github.io/covid-19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.report.country"
* item[=].answer[+].valueCoding = $vs-iso3166-1-2#ZA

* item[+].linkId  = "report_test_reason"
* item[=].text    = "Why tested for COVID-19:"
* item[=].definition    = "http://openhie.github.io/covid-19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.report.testReason"
* item[=].answer[+].valueCoding = WhoCrCodeSystemReasonForTesting#CASE_CONTACT

* item[+].linkId  = "section_patient_info"
* item[=].text    = "Patient information"

* item[=].item[+].linkId  = "patinfo_ID"
* item[=].item[=].text    = "Unique Case Identifier (used in country):"
* item[=].item[=].definition    = "http://openhie.github.io/covid-19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.patientInfo.caseId"
* item[=].item[=].answer[+].valueString = "123456789"

* item[=].item[+].linkId  = "patinfo_ageonset"
* item[=].item[=].text    = "Age (use days if <1 month, months if <1 year):"
* item[=].item[=].definition    = "http://openhie.github.io/covid-19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.patientInfo.onsetAge"
* item[=].item[=].answer[+].valueQuantity = 34 'a'

* item[=].item[+].linkId  = "patinfo_sex"
* item[=].item[=].text    = "Sex at birth:"
* item[=].item[=].definition    = "http://openhie.github.io/covid-19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.patientInfo.birthSex"
* item[=].item[=].answer[+].valueCoding = $cs-gender#male

* item[=].item[+].linkId  = "patinfo_placediagnosed"
* item[=].item[=].text    = "Place where the case was diagnosed:"

* item[=].item[=].item[+].linkId  = "patinfo_idadmin0"
* item[=].item[=].item[=].text    = "Country:"
* item[=].item[=].item[=].definition    = "http://openhie.github.io/covid-19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.patientInfo.identified.country"
* item[=].item[=].item[=].answer[+].valueCoding = $vs-iso3166-1-2#ZA

* item[=].item[=].item[=].item[+].linkId  = "patinfo_idadmin1"
* item[=].item[=].item[=].item[=].text    = "Admin Level 1 (province):"
* item[=].item[=].item[=].item[=].definition    = "http://openhie.github.io/covid-19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.patientInfo.identified.subnational"
* item[=].item[=].item[=].item[=].answer[+].valueCoding = $cs-iso3166-2#ZA-KZN

* item[+].linkId  = "section_clinical_status"
* item[=].text    = "Clinical Status"

* item[=].item[+].linkId  = "Lab_date1"
* item[=].item[=].text    = "Date of first laboratory confirmation test:"
* item[=].item[=].definition    = "http://openhie.github.io/covid-19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.clinicalStatus.lab.confirmedDate"
* item[=].item[=].answer[+].valueDate = "2021-01-20"

* item[=].item[+].linkId  = "patcourse_asymp"  //TODO: variable name/short label is opposite to meaning of question
* item[=].item[=].text    = "Any symptoms or signs at time of specimen collection that resulted in first laboratory confirmation?"
* item[=].item[=].definition    = "http://openhie.github.io/covid-19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.asymptomatic"
* item[=].item[=].answer[+].valueCoding = $cs-v2-0136#Y

* item[=].item[=].item[+].linkId  = "patcourse_dateonset"
* item[=].item[=].item[=].text    = "Date of onset of symptoms:"
* item[=].item[=].item[=].definition    = "http://openhie.github.io/covid-19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.onsetDate"
* item[=].item[=].item[=].answer[+].valueDate = "2021-01-15"

* item[=].item[+].linkId  = "section_comorbidity"
* item[=].item[=].text    = "Underlying conditions and comorbidity:"

* item[=].item[=].item[+].linkId  = "Comcond_any"
* item[=].item[=].item[=].text    = "Any underlying conditions?"
* item[=].item[=].item[=].definition    = "http://openhie.github.io/covid-19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.any"
* item[=].item[=].item[=].answer[+].valueCoding = $cs-v2-0136#N

* item[+].linkId  = "section_exposure_risk"
* item[=].text    = "Exposure risk in the 14 days prior to symptom onset (prior to testing if asymptomatic)"

* item[=].item[+].linkId  = "expo_travel"
* item[=].item[=].text  = "Has the case travelled in the 14 days prior to symptom onset?"
* item[=].item[=].definition    = "http://openhie.github.io/covid-19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.exposure.travel.hasTravelled"
* item[=].item[=].answer[+].valueCoding = $cs-v2-0136#N
