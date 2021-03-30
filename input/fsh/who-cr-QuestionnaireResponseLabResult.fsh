Instance: WhoCrQuestionnaireResponseLabResult
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "Who Cr Questionnaire Response fr lab result"
Description: "Questionnaire response example for Covid19 lab result"
* identifier.system = "http://test.org/response-id"
* identifier.value = "1111"
* questionnaire = Canonical(WhoCrQuestionnaireCovid19Result)
* status = #completed
* authored = "2021-01-20T11:29:52+02:00"
* author = Reference(WhoCrPractitionerExample)

* item[+].linkId = "labreport_ID"
* item[=].text = "Unique lab result identifier"
* item[=].answer[+].valueString = "123456789"

* item[+].linkId = "testLab_id"
* item[=].text = "Lab that conducted the test"
* item[=].answer[+].valueString = "123456789"

* item[+].linkId = "section_patient_info"
* item[=].text = "Patient information"

* item[=].item[+].linkId = "patinfo_ID"
* item[=].item[=].text = "Patient unique ID"
* item[=].item[=].answer[+].valueString = "123456789"

* item[=].item[+].linkId = "patinfo_name"
* item[=].item[=].text = "Patient Name"
* item[=].item[=].answer[+].valueString = "Rob Stark"

* item[=].item[+].linkId = "patinfo_dob"
* item[=].item[=].text = "Date of Birth"
* item[=].item[=].answer[+].valueDate = "2021-01-20"

* item[=].item[+].linkId = "patinfo_sex"
* item[=].item[=].text = "Sex at birth"
* item[=].item[=].answer[+].valueCoding = $cs-gender#male

* item[+].linkId = "Lab_date1"
* item[=].text = "Lab Confirmation Test Date"
* item[=].answer[+].valueDate = "2021-01-20"

* item[+].linkId = "test_result"
* item[=].text = "Overall Result"
* item[=].answer[+].valueString = "Positive"

* item[+].linkId = "ordering_clinic"
* item[=].text = "Clinic that requested the test"
* item[=].answer[+].valueString = "KEMRI Clinic"

* item[+].linkId = "test_type"
* item[=].text = "Type of Test"
* item[=].answer[+].valueString = "COVID-19 PCR TEST"

* item[+].linkId = "specimen_type"
* item[=].text = "Sample Type"
* item[=].answer[+].valueString = "Respiratory Swab"
