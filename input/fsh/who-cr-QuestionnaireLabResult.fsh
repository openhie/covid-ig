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
* item[0].text = "Unique lab result identifier:"
* item[0].code = $LNC#94659-0
* item[0].type = #string
* item[0].required = true

* item[1].linkId = "testLab_id"
* item[1].text = "Lab that conducted the test:"
* item[1].code = $LNC#94659-0
* item[1].type = #string
* item[1].required = true

* item[2].linkId = "section_patient_info"
* item[2].prefix = "Section 1"
* item[2].text = "Patient information"
* item[2].type = #group

* item[2].item[0].linkId = "patinfo_ID"
* item[2].item[0].text = "Patient unique ID:"
* item[2].item[0].type = #string
* item[2].item[0].code = $LNC#94659-0
* item[2].item[0].required = true

* item[2].item[1].linkId = "patinfo_name"
* item[2].item[1].text = "Patient name:"
* item[2].item[1].type = #string
* item[2].item[1].required = true

* item[2].item[2].linkId = "patinfo_idadmin1"
* item[2].item[2].text = "Patient County:"
* item[2].item[2].type = #string
* item[2].item[2].code = $LNC#52830-7
* item[2].item[2].required = true

* item[2].item[3].linkId = "patinfo_dob"
* item[2].item[3].text = "Date of Birth:"
* item[2].item[3].type = #date
* item[2].item[3].code = $LNC#21112-8
* item[2].item[3].required = true

* item[2].item[4].linkId = "patinfo_sex"
* item[2].item[4].text = "Sex at birth:"
* item[2].item[4].type = #choice
* item[2].item[4].code = $LNC#76689-9
* item[2].item[4].answerValueSet = Canonical(WhoCrValueSetSexAtBirth)
* item[2].item[4].required = true

* item[3].linkId = "section_lab_test_info"
* item[3].prefix = "Section 2"
* item[3].text = "Lab test information"
* item[3].type = #group

* item[3].item[0].linkId = "Lab_date1"
* item[3].item[0].text = "Lab Confirmation Test Date:"
* item[3].item[0].type = #date
* item[3].item[0].required = true

* item[3].item[1].linkId = "test_result"
* item[3].item[1].text = "Overall Result:"
* item[3].item[1].type = #string
* item[3].item[1].code = $LNC#94500-6
* item[3].item[1].required = true

* item[3].item[2].linkId = "ordering_clinic"
* item[3].item[2].text = "Clinic that requested the test:"
* item[3].item[2].type = #string
* item[3].item[2].code = $LNC#76696-4
* item[3].item[2].required = true

* item[3].item[3].linkId = "test_type"
* item[3].item[3].text = "Type of Test:"
* item[3].item[3].type = #string
* item[3].item[3].code = $LNC#76696-4
* item[3].item[3].required = true

* item[8].linkId = "specimen_type"
* item[8].text = "Sample type:"
* item[8].type = #string
* item[8].required = true
