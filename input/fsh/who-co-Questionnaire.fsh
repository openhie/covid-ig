Instance: WhoCoQuestionnaire
InstanceOf: Questionnaire
Description: "WHO Questionnaire for COVID-19 Case Outcome"
Title: "COVID-19 Case Outcome"
Usage: #definition

* name = "WhoCoQuestionnaire"
* subjectType = #Patient
* url = "http://openhie.github.io/covid-19/Questionnaire/WhoCoQuestionnaire"
* status = #active

* item[0].linkId = "patinfo_ID"
* item[0].text = "Unique Case Identifier"
* item[0].code = $LNC#94659-0
* item[0].type = #string
* item[0].required = true

* item[1].linkId = "outcome_report_date"
* item[1].text = "Date of re-submission for this report"
* item[1].code = $LNC#91877-1
* item[1].type = #date
* item[1].required = true

* item[2].linkId = "outcome_date_of_outcome"
* item[2].text = "Date of Release from isolation/hospital or Date of Death"
* item[2].code = $LNC#46582-3
* item[2].type = #date
* item[2].required = true

* item[3].linkId = "outcome_asymp"
* item[3].text = "Developed symptoms after time of specimen collection"
* item[3].code = $LNC#66421-9
* item[3].type = #choice
* item[3].required = true

* item[4].linkId = "outcome_asymp_date"
* item[4].text = "Date of onset of symptoms/signs of illness"
* item[4].code = $LNC#65222-2
* item[4].type = #date

* item[5].linkId = "patcourse_admit"
* item[5].text = "Admission to hospital (may have been previously reported)"
* item[5].code = $LNC#77974-4
* item[5].type = #choice
* item[5].required = true

* item[6].linkId = "admission_date"
* item[6].text = "First date of admission to hospital"
* item[6].code = $LNC#8656-1
* item[6].type = #date

* item[7].linkId = "outcome_patcourse_icu"
* item[7].text = "Did the case receive care in an intensive care unit (ICU)"
* item[7].code = $LNC#95420-6
* item[7].type = #choice
* item[7].required = true

* item[8].linkId = "outcome_patcourse_vent"
* item[8].text = "Did the case receive ventilation"
* item[8].code = $LNC#96539-2
* item[8].type = #choice
* item[8].required = true

* item[9].linkId = "outcome_patcourse_ecmo"
* item[9].text = "Did the case receive extracorporeal membrane oxygenation"
* item[9].code = $LNC#96540-0
* item[9].type = #choice
* item[9].required = true

* item[10].linkId = "outcome_patcourse_status"
* item[10].text = "Health Outcome"
* item[10].code = $LNC#91541-3
* item[10].type = #choice
* item[10].required = true

* item[11].linkId = "outcome_patcourse_status_other"
* item[11].text = "If other, please explain"
* item[11].type = #string

* item[12].linkId = "outcome_lab_date"
* item[12].text = "If released from hospital /isolation, date of last laboratory test"
* item[12].code = $LNC#96550-9
* item[12].type = #date

* item[13].linkId = "outcome_lab_result"
* item[13].text = "Results of last test"
* item[13].code = $LNC#96552-5
* item[13].type = #choice

* item[14].linkId = "outcome_contacts_followed"
* item[14].text = "Total number of contacts followed for this case"
* item[14].code = $LNC#96551-7
* item[14].type = #integer
* item[14].required = true

* item[15].linkId = "outcome_contacts_followed_unknown"
* item[15].text = "Number of contacts followed unknown"
* item[15].type = #string
