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

* item[+].linkId  = "report_date"
* item[=].text    = "Date of Reporting:"
* item[=].definition    = "http://openhie.github.io/covid-19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.report.reportDate"
* item[=].answer[+].valueDate = "2021-01-20"

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

* item[=].item[=].item[+].linkId  = "patcourse_admit"
* item[=].item[=].item[=].text    = "Hospital Admission Indicator:"
* item[=].item[=].item[=].definition    = "http://openhie.github.io/covid-19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.wasAdmitted"
* item[=].item[=].item[=].answer[+].valueCoding = $cs-v2-0136#Y

* item[=].item[=].item[+].linkId  = "patcourse_presHCF"
* item[=].item[=].item[=].text    = "First Hospital Admission Date:"
* item[=].item[=].item[=].definition    = "http://openhie.github.io/covid-19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.admitDate"
* item[=].item[=].item[=].answer[+].valueDate = "2021-01-15"

* item[=].item[=].item[+].linkId  = "patcourse_icu"
* item[=].item[=].item[=].text    = "Intensive Care Received:"
* item[=].item[=].item[=].definition    = "http://openhie.github.io/covid-19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.receivedIcuCare"
* item[=].item[=].item[=].answer[+].valueCoding = $cs-v2-0136#Y

* item[=].item[=].item[+].linkId  = "patcourse_vent"
* item[=].item[=].item[=].text    = "Ventilation Received:"
* item[=].item[=].item[=].definition    = "http://openhie.github.io/covid-19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.ventilated"
* item[=].item[=].item[=].answer[+].valueCoding = $cs-v2-0136#Y

* item[=].item[=].item[+].linkId  = "patcourse_ecmo"
* item[=].item[=].item[=].text    = "Did the case receive extracorporeal membrane oxygenation?:"
* item[=].item[=].item[=].definition    = "http://openhie.github.io/covid-19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.receivedEcmo"
* item[=].item[=].item[=].answer[+].valueCoding = $cs-v2-0136#Y

* item[=].item[=].item[+].linkId  = "patcourse_iso"
* item[=].item[=].item[=].text    = "Is case in isolation with Infection Control Practice in place?"
* item[=].item[=].item[=].definition    = "http://openhie.github.io/covid-19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.wasIsolated"
* item[=].item[=].item[=].answer[+].valueCoding = $cs-v2-0136#Y

* item[=].item[=].item[+].linkId  = "patcourse_dateiso"
* item[=].item[=].item[=].text    = "Date of isolation:"
* item[=].item[=].item[=].definition    = "http://openhie.github.io/covid-19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.isolatedDate"
* item[=].item[=].item[=].answer[+].valueDate = "2021-01-15"

* item[=].item[+].linkId  = "section_comorbidity"
* item[=].item[=].text    = "Underlying conditions and comorbidity:"

* item[=].item[=].item[+].linkId  = "Comcond_any"
* item[=].item[=].item[=].text    = "Any underlying conditions?"
* item[=].item[=].item[=].definition    = "http://openhie.github.io/covid-19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.any"
* item[=].item[=].item[=].answer[+].valueCoding = $cs-v2-0136#N

* item[=].item[=].item[+].linkId  = "comcond"
* item[=].item[=].item[=].text    = "Patient Underlying Conditions:"
* item[=].item[=].item[=].definition    = "http://openhie.github.io/covid-19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.conditions"
* item[=].item[=].item[=].answer[+].valueCoding = WhoCrCodeSystemComorbidity#DIABETES
* item[=].item[=].item[=].answer[+].valueCoding = WhoCrCodeSystemComorbidity#PREGNANCY

* item[+].linkId  = "section_exposure_risk"
* item[=].text    = "Exposure risk in the 14 days prior to symptom onset (prior to testing if asymptomatic)"

* item[=].item[+].linkId  = "patinfo_occuhcw"
* item[=].item[=].text  = "Is case a Health Care Worker (any job in a health care setting):"
* item[=].item[=].definition    = "http://openhie.github.io/covid-19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.exposure.travel.isHealthcareWorker"
* item[=].item[=].answer[+].valueCoding = $cs-v2-0136#N

* item[=].item[+].linkId  = "expo_travel"
* item[=].item[=].text  = "Has the case travelled in the 14 days prior to symptom onset?"
* item[=].item[=].definition    = "http://openhie.github.io/covid-19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.exposure.travel.hasTravelled"
* item[=].item[=].answer[+].valueCoding = $cs-v2-0136#N

* item[=].item[+].linkId  = "expo_travel_country"
* item[=].item[=].text  = "Country:"
* item[=].item[=].definition    = "http://openhie.github.io/covid-19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.exposure.travel.location.country"
* item[=].item[=].answer[+].valueCoding = $vs-iso3166-1-2#ZW

* item[=].item[+].linkId  = "expo_travel_city"
* item[=].item[=].text  = "City:"
* item[=].item[=].definition    = "http://openhie.github.io/covid-19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.exposure.travel.location.city"
* item[=].item[=].answer[+].valueString = "Harare"

* item[=].item[+].linkId  = "expo_travel_date"
* item[=].item[=].text    = "Date of Departure from the place:"
* item[=].item[=].definition    = "http://openhie.github.io/covid-19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.exposure.travel.location.locationPeriod.end"
* item[=].item[=].answer[+].valueDate = "2021-01-15"

* item[=].item[+].linkId  = "expo_visit_healthcare"
* item[=].item[=].text  = "Has case visited any health care facility in the 14 days prior to symptom onset?"
* item[=].item[=].definition    = "http://openhie.github.io/covid-19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.exposure.visitedHealthcare"
* item[=].item[=].answer[+].valueCoding = $cs-v2-0136#N

* item[=].item[+].linkId  = "expo_contact_case"
* item[=].item[=].text  = "Has case had contact with a confirmed case in the 14 days prior to symptom onset?"
* item[=].item[=].definition    = "http://openhie.github.io/covid-19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.exposure.contact.hadContact"
* item[=].item[=].answer[+].valueCoding = $cs-v2-0136#N

* item[=].item[+].linkId  = "expo_case_setting_detail"
* item[=].item[=].text  = "Contact Setting:"
* item[=].item[=].definition    = "http://openhie.github.io/covid-19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.exposure.contact.contact.exposure.setting"
* item[=].item[=].answer[+].valueString = "Home"

* item[=].item[+].linkId  = "expo_ID1"
* item[=].item[=].text  = "Contact ID:"
* item[=].item[=].definition    = "http://openhie.github.io/covid-19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.exposure.contact.contact.identifier"
* item[=].item[=].answer[+].valueString = "+2777888888"

* item[=].item[+].linkId  = "expo_case_date_first"
* item[=].item[=].text    = "First Date of Contact:"
* item[=].item[=].definition    = "http://openhie.github.io/covid-19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.exposure.contact.contact.exposure.period.begin"
* item[=].item[=].answer[+].valueDate = "2021-01-15"

* item[=].item[+].linkId  = "expo_case_date_last"
* item[=].item[=].text    = "Last Date of Contact:"
* item[=].item[=].definition    = "http://openhie.github.io/covid-19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.exposure.contact.contact.exposure.period.end"
* item[=].item[=].answer[+].valueDate = "2021-01-17"

* item[=].item[+].linkId  = "expo_case_location"
* item[=].item[=].text  = "Most likely country of exposure:"
* item[=].item[=].definition    = "http://openhie.github.io/covid-19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary..exposure.contact.country"
* item[=].item[=].answer[+].valueCoding = $vs-iso3166-1-2#ZW
