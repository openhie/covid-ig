Instance: WhoCoQuestionnaireResponse
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "WHO CO QuestionnaireResponse"
Description: "WHO Case Outcome QuestionnaireResponse example"
* identifier.system = "http://test.org/response-id"
* identifier.value = "1111"
* questionnaire = Canonical(WhoCoQuestionnaire)
* status = #completed
* authored = "2021-01-20T11:29:52+02:00"

* item[+].linkId = "patinfo_ID"
* item[=].text = "Unique Case Identifier"
* item[=].answer[+].valueString = "123456789"

* item[+].linkId = "outcome_report_date"
* item[=].text = "Date of re-submission for this report"
* item[=].answer[+].valueDateTime = "2021-05-13"

* item[+].linkId = "outcome_date_of_outcome"
* item[=].text = "Date of Release from isolation/hospital or Date of Death"
* item[=].answer[+].valueDateTime = "2021-05-13"

* item[+].linkId = "outcome_asymp"
* item[=].text = "Developed symptoms after time of specimen collection"
* item[=].answer[+].valueCoding = $cs-v2-0136#Y

* item[+].linkId = "outcome_asymp_date"
* item[=].text = "Date of onset of symptoms/signs of illness"
* item[=].answer[+].valueDateTime = "2021-05-13"

* item[+].linkId = "patcourse_admit"
* item[=].text = "Admission to hospital (may have been previously reported)"
* item[=].answer[+].valueCoding = $cs-v2-0136#Y

* item[+].linkId = "admission_date"
* item[=].text = "First date of admission to hospital"
* item[=].answer[+].valueDateTime = "2021-05-13"

* item[+].linkId = "outcome_patcourse_icu"
* item[=].text = "Did the case receive care in an intensive care unit (ICU)"
* item[=].answer[+].valueCoding = $cs-v2-0136#N

* item[+].linkId = "outcome_patcourse_vent"
* item[=].text = "Did the case receive ventilation"
* item[=].answer[+].valueCoding = $cs-v2-0136#UNK

* item[+].linkId = "outcome_patcourse_ecmo"
* item[=].text = "Did the case receive extracorporeal membrane oxygenation"
* item[=].answer[+].valueCoding = $cs-v2-0136#Y

* item[+].linkId = "outcome_patcourse_status"
* item[=].text = "Health Outcome"
* item[=].answer[+].valueCoding = WhoCoHealthOutcome#other

* item[+].linkId = "outcome_patcourse_status_other"
* item[=].text = "If other, please explain"
* item[=].answer[+].valueString = "N/A"

* item[+].linkId = "outcome_lab_date"
* item[=].text = "If released from hospital /isolation, date of last laboratory test"
* item[=].answer[+].valueDateTime = "2021-05-13"

* item[+].linkId = "outcome_lab_result"
* item[=].text = "Results of last test"
* item[=].answer[+].valueCoding = WhoCoPositiveNegativeUnknown#positive

* item[+].linkId = "outcome_contacts_followed"
* item[=].text = "Total number of contacts followed for this case"
* item[=].answer[+].valueInteger = 5

* item[+].linkId = "outcome_contacts_followed_unknown"
* item[=].text = "Number of contacts followed unknown"
* item[=].answer[+].valueCoding = $cs-v2-0136#UNK