Instance: WhoCrQuestionnaireCovid19Result
InstanceOf: Questionnaire
Description: "COVID-19 Laboratory Result"
Title: "COVID-19 Laboratory Result"
Usage: #definition

* name = "WhoCrQuestionnaireCovid19Result"
* subjectType = #Patient
* url = "http://openhie.github.io/covid-19/Questionnaire/WhoCrQuestionnaireCovid19Result"
* status = #active

* item[0].linkId = "labreport_ID"
* item[0].text = "Unique lab result identifier"
* item[0].code = $LNC#94659-0
* item[0].type = #string

* item[1].linkId = "testLab_id"
* item[1].text = "Lab that conducted the test"
* item[1].code = $LNC#94659-0
* item[1].type = #string

* item[2].linkId = "section_patient_info"
* item[2].prefix = "Section 1"
* item[2].text = "Patient information"
* item[2].type = #group

* item[2].item[0].linkId = "patinfo_ID"
* item[2].item[0].text = "Patient unique ID"
* item[2].item[0].type = #string
* item[2].item[0].code = $LNC#94659-0

* item[2].item[1].linkId = "patinfo_name"
* item[2].item[1].text = "Patient name"
* item[2].item[1].type = #string

* item[2].item[2].linkId = "patinfo_idadmin1"
* item[2].item[2].text = "Patient Country "
* item[2].item[2].type = #choice
* item[2].item[2].code = $LNC#96546-7
* item[2].item[2].answerValueSet = "#WhoCrValueSetQuestionnaireCountry"

* item[2].item[3].linkId = "patinfo_dob"
* item[2].item[3].text = "Date of Birth"
* item[2].item[3].type = #date
* item[2].item[3].code = $LNC#21112-8

* item[2].item[4].linkId = "patinfo_sex"
* item[2].item[4].text = "Sex at birth:"
* item[2].item[4].type = #choice
* item[2].item[4].code = $LNC#76689-9
* item[2].item[4].answerValueSet = Canonical(WhoCrValueSetSexAtBirth)

* item[3].linkId = "Lab_date1"
* item[3].text = "Lab Confirmation Test Date"
* item[3].type = #date

* item[4].linkId = "test_result"
* item[4].text = "Overall Result"
* item[4].type = #string
* item[4].code = $LNC#94500-6

* item[5].linkId = "ordering_clinic"
* item[5].text = "Clinic that requested the test"
* item[5].type = #string
* item[5].code = $LNC#76696-4

* item[6].linkId = "test_type"
* item[6].text = "Type of Test"
* item[6].type = #string
* item[6].code = $LNC#76696-4

* item[7].linkId = "specimen_type"
* item[7].text = "Sample type"
* item[7].type = #string
