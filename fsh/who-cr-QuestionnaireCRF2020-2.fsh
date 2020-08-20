Instance: WhoCrQuestionnaireCovid19Surveillance
InstanceOf: Questionnaire
Description: "TODO"
Title: "Revised case report form for Confirmed Novel Coronavirus COVID-19"
Usage: #definition

* insert PublisherContext
* name = "WhoCrQuestionnaireCovid19Surveillance"
* version = "2020.2"
* subjectType = #Patient
//* language = "en"

// TODO: review SDC supplemental profiles (http://build.fhir.org/ig/HL7/sdc/intro.html)


* item[0].linkId    = "report_date"
* item[0].text    = "Date of reporting to national health authority:"
* item[0].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.report.date"
* item[0].type    = #date

* item[1].linkId  = "report_country"
* item[1].text    = "Reporting country:"
// * item[0].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.report.country"
* item[1].type    = #string

* item[2].linkId  = "report_test_reason"
* item[2].text    = "Why tested for COVID-19:"
* item[2].code    = http://loinc.org#67098-4 "Reason for test or procedure"
* item[2].type    = #open-choice
// * item[2].answerValueSet = Canonical(WhoCrValueSetReasonForCovid19Testing)
* item[2].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.report.testReason"

* item[3].linkId  = "section_patient_info"
* item[3].prefix  = "Section 1"
* item[3].text    = "Patient information"
* item[3].type    = #group

* item[3].item[0].linkId  = "patinfo_ID"
* item[3].item[0].text    = "Unique Case Identifier (used in country):"
* item[3].item[0].type    = #string

* item[3].item[1].linkId  = "patinfo_ageonset"
* item[3].item[1].text    = "Age (use days if <1 month, months if <1 year):"
* item[3].item[1].type    = #quantity
* item[3].item[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitValueSet"
* item[3].item[1].extension[0].valueCanonical = Canonical(WhoCrValueSetAgeUnits)
// TODO: add min value enforcement via ElementDefinition

* item[3].item[2].linkId  = "patinfo_sex"
* item[3].item[2].text    = "Sex at birth:"
* item[3].item[2].type    = #choice
// * item[3].item[2].answerOption[0].valueCoding = http://hl7.org/fhir/administrative-gender#male "Male"
// * item[3].item[2].answerOption[1].valueCoding = http://hl7.org/fhir/administrative-gender#female "Female"
* item[3].item[2].answerValueSet = Canonical(WhoCrValueSetSexAtBirth)

* item[3].item[3].linkId  = "patinfo_placediagnosed"
* item[3].item[3].text    = "Place where the case was diagnosed:"
* item[3].item[3].type    = #group

* item[3].item[3].item[0].linkId  = "patinfo_idadmin0"
* item[3].item[3].item[0].text    = "Country:"
* item[3].item[3].item[0].type    = #string

* item[3].item[3].item[0].item[0].linkId  = "patinfo_idadmin1"
* item[3].item[3].item[0].item[0].text    = "Admin Level 1 (province):"
* item[3].item[3].item[0].item[0].type    = #string
* item[3].item[3].item[0].item[0].enableWhen[0].question = "patinfo_idadmin0"
* item[3].item[3].item[0].item[0].enableWhen[0].operator = #exists
* item[3].item[3].item[0].item[0].enableWhen[0].answerBoolean = true

* item[3].item[4].linkId  = "patinfo_placereside"
* item[3].item[4].text    = "Case usual place of residency:"
* item[3].item[4].type    = #group

* item[3].item[4].item[0].linkId  = "patinfo_resadmin0"
* item[3].item[4].item[0].text    = "Country:"
* item[3].item[4].item[0].type    = #string

* item[4].linkId  = "section_clinical_status"
* item[4].prefix  = "Section 2"
* item[4].text    = "Clinical Status"
* item[4].type    = #group

* item[4].item[0].linkId  = "Lab_date1"
* item[4].item[0].text    = "Date of first laboratory confirmation test:"
* item[4].item[0].type    = #date

* item[4].item[1].linkId  = "patcourse_asymp"  //TODO: variable name/short label is opposite to meaning of question
* item[4].item[1].text    = "Any symptoms* or signs at time of specimen collection that resulted in first laboratory confirmation?"
* item[4].item[1].type    = #choice
* item[4].item[1].answerValueSet = Canonical(WhoCrValueSetYesNoUnk)
// * item[4].item[1].answerOption[0].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0136#N // "No (i.e., asymptomatic)"
// * item[4].item[1].answerOption[1].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y // "Yes"
// * item[4].item[1].answerOption[2].valueCoding = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown // "Unknown"

* item[4].item[1].item[0].linkId  = "patcourse_dateonset"  
* item[4].item[1].item[0].text    = "Date of onset of symptoms:"
* item[4].item[1].item[0].type    = #date
* item[4].item[1].item[0].enableWhen[0].question = "patcourse_asymp"
* item[4].item[1].item[0].enableWhen[0].operator = #=
* item[4].item[1].item[0].enableWhen[0].answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y

* item[4].item[2].linkId  = "section_comorbidity"
* item[4].item[2].text    = "Underlying conditions and comorbidity:"
* item[4].item[2].type    = #group

* item[4].item[2].item[0].linkId  = "Comcond_present"
* item[4].item[2].item[0].text    = "Any underlying conditions?"
* item[4].item[2].item[0].type    = #choice
* item[4].item[2].item[0].answerValueSet = Canonical(WhoCrValueSetYesNoUnk)

* item[4].item[2].item[1].linkId  = "section_comorb_list"
* item[4].item[2].item[1].text    = "If yes, select all that apply:"
* item[4].item[2].item[1].type    = #group
* item[4].item[2].item[1].enableWhen[0].question = "Comcond_present"
* item[4].item[2].item[1].enableWhen[0].operator = #=
* item[4].item[2].item[1].enableWhen[0].answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y

* item[4].item[2].item[1].item[0].linkId  = "Comcond_preg"
* item[4].item[2].item[1].item[0].text    = "Pregnancy"
* item[4].item[2].item[1].item[0].type    = #boolean

* item[4].item[2].item[1].item[0].item[0].linkId  = "Comcond_pregt"
* item[4].item[2].item[1].item[0].item[0].text    = "Trimester of pregnancy"
* item[4].item[2].item[1].item[0].item[0].type    = #choice
* item[4].item[2].item[1].item[0].item[0].answerValueSet = Canonical(WhoCrValueSetPregnancyTrimester)
* item[4].item[2].item[1].item[0].item[0].enableWhen[0].question = "Comcond_preg"
* item[4].item[2].item[1].item[0].item[0].enableWhen[0].operator = #=
* item[4].item[2].item[1].item[0].item[0].enableWhen[0].answerBoolean = true

* item[4].item[2].item[1].item[1].linkId  = "Comcond_partum"
* item[4].item[2].item[1].item[1].text    = "Post-partum (< 6 weeks)"
* item[4].item[2].item[1].item[1].type    = #boolean

* item[4].item[2].item[1].item[2].linkId  = "Comcond_immuno"
* item[4].item[2].item[1].item[2].text    = "Immunodeficiency including HIV"
* item[4].item[2].item[1].item[2].type    = #boolean

* item[4].item[2].item[1].item[3].linkId  = "Comcond_cardi"
* item[4].item[2].item[1].item[3].text    = "Cardiovacsular disease including hypertension"
* item[4].item[2].item[1].item[3].type    = #boolean

* item[4].item[2].item[1].item[4].linkId  = "Comcond_diabetes"
* item[4].item[2].item[1].item[4].text    = "Diabetes"
* item[4].item[2].item[1].item[4].type    = #boolean

* item[4].item[2].item[1].item[5].linkId  = "Comcond_liver"
* item[4].item[2].item[1].item[5].text    = "Liver disease"
* item[4].item[2].item[1].item[5].type    = #boolean

* item[4].item[2].item[1].item[6].linkId  = "Comcond_renal"
* item[4].item[2].item[1].item[6].text    = "Renal disease"
* item[4].item[2].item[1].item[6].type    = #boolean

* item[4].item[2].item[1].item[7].linkId  = "Comcond_neuro"
* item[4].item[2].item[1].item[7].text    = "Chronic neurological or neuromuscular disease"
* item[4].item[2].item[1].item[7].type    = #boolean

* item[4].item[2].item[1].item[8].linkId  = "Comcond_malig"
* item[4].item[2].item[1].item[8].text    = "Malignancy"
* item[4].item[2].item[1].item[8].type    = #boolean

* item[4].item[2].item[1].item[9].linkId  = "Comcond_lung"
* item[4].item[2].item[1].item[9].text    = "Chronic lung disease"
* item[4].item[2].item[1].item[9].type    = #boolean

* item[4].item[2].item[1].item[10].linkId  = "Comcond_other"
* item[4].item[2].item[1].item[10].text    = "Other, please specify:"
* item[4].item[2].item[1].item[10].type    = #string

* item[4].item[2].item[2].linkId  = "section_health_status"
* item[4].item[2].item[2].text    = "Health Status at time of Reporting:"
* item[4].item[2].item[2].type    = #group

* item[4].item[2].item[2].item[0].linkId  = "patcourse_admit"
* item[4].item[2].item[2].item[0].text    = "Admission to hospital:"
* item[4].item[2].item[2].item[0].type    = #choice
* item[4].item[2].item[2].item[0].answerValueSet = Canonical(WhoCrValueSetYesNoUnk)

* item[4].item[2].item[2].item[1].linkId  = "patcourse_presHCF"
* item[4].item[2].item[2].item[1].text    = "First date of admission to hospital:"
* item[4].item[2].item[2].item[1].type    = #date
* item[4].item[2].item[2].item[1].enableWhen[0].question  = "patcourse_admit"
* item[4].item[2].item[2].item[1].enableWhen[0].operator  = #=
* item[4].item[2].item[2].item[1].enableWhen[0].answerCoding  = http://terminology.hl7.org/CodeSystem/v2-0136#Y

* item[4].item[2].item[2].item[2].linkId  = "section_hospital_admission"
* item[4].item[2].item[2].item[2].text    = "if yes:"
* item[4].item[2].item[2].item[2].type    = #group
* item[4].item[2].item[2].item[2].enableWhen[0].question  = "patcourse_admit"
* item[4].item[2].item[2].item[2].enableWhen[0].operator  = #=
* item[4].item[2].item[2].item[2].enableWhen[0].answerCoding  = http://terminology.hl7.org/CodeSystem/v2-0136#Y

* item[4].item[2].item[2].item[2].item[0].linkId  = "patcourse_icu"
* item[4].item[2].item[2].item[2].item[0].text    = "Did the case receive care in an intensive care unit (ICU)?"
* item[4].item[2].item[2].item[2].item[0].type    = #choice
* item[4].item[2].item[2].item[2].item[0].answerValueSet = Canonical(WhoCrValueSetYesNoUnk)

* item[4].item[2].item[2].item[2].item[1].linkId  = "patcourse_vent"
* item[4].item[2].item[2].item[2].item[1].text    = "Did the case receive ventilation?"
* item[4].item[2].item[2].item[2].item[1].type    = #choice
* item[4].item[2].item[2].item[2].item[1].answerValueSet = Canonical(WhoCrValueSetYesNoUnk)

* item[4].item[2].item[2].item[2].item[2].linkId  = "patcourse_ecmo"
* item[4].item[2].item[2].item[2].item[2].text    = "Did the case receive extracorporeal membrane oxygenation?"
* item[4].item[2].item[2].item[2].item[2].type    = #choice
* item[4].item[2].item[2].item[2].item[2].answerValueSet = Canonical(WhoCrValueSetYesNoUnk)

* item[4].item[2].item[2].item[3].linkId  = "patcourse_iso"
* item[4].item[2].item[2].item[3].text  = "Is case in isolation with Infection Control Practice in place?"
* item[4].item[2].item[2].item[3].type  = #choice
* item[4].item[2].item[2].item[3].answerValueSet = Canonical(WhoCrValueSetYesNoUnk)

* item[4].item[2].item[2].item[3].item[0].linkId  = "patcourse_dateiso"
* item[4].item[2].item[2].item[3].item[0].text  = "Date of isolation:"
* item[4].item[2].item[2].item[3].item[0].type  = #date

* item[5].linkId  = "section_exposure_risk"
* item[5].prefix  = "Section 3"
* item[5].text    = "Exposure risk in the 14 days prior to symptom onset (prior to testing if asymptomatic)"
* item[5].type    = #group

* item[5].item[0].linkId  = "patinfo_occuhcw"
* item[5].item[0].text  = "Is case a Health Care Worker (any job in a health care setting):"
* item[5].item[0].type  = #choice
* item[5].item[0].answerValueSet = Canonical(WhoCrValueSetYesNoUnk)

* item[5].item[0].item[0].linkId  = "patinfo_occuhcw_ifyes"
* item[5].item[0].item[0].text    = "If yes:"
* item[5].item[0].item[0].type    = #group
* item[5].item[0].item[0].enableWhen[0].question  = "patinfo_occuhcw"
* item[5].item[0].item[0].enableWhen[0].operator  = #=
* item[5].item[0].item[0].enableWhen[0].answerCoding  = http://terminology.hl7.org/CodeSystem/v2-0136#Y

* item[5].item[0].item[0].item[0].linkId  = "patinfo_occuhcw_country"
* item[5].item[0].item[0].item[0].text    = "Country:"
* item[5].item[0].item[0].item[0].type    = #string

* item[5].item[0].item[0].item[1].linkId  = "patinfo_occuhcw_city"
* item[5].item[0].item[0].item[1].text    = "City:"
* item[5].item[0].item[0].item[1].type    = #string

* item[5].item[0].item[0].item[2].linkId  = "patinfo_occuhcw_name"
* item[5].item[0].item[0].item[2].text    = "Name of Facility:"
* item[5].item[0].item[0].item[2].type    = #string

* item[5].item[1].linkId  = "expo_travel"
* item[5].item[1].text  = "Has the case travelled in the 14 days prior to symptom onset?"
* item[5].item[1].type  = #choice
* item[5].item[1].answerValueSet = Canonical(WhoCrValueSetYesNoUnk)

* item[5].item[1].item[0].linkId  = "expo_travel_ifyes"
* item[5].item[1].item[0].text    = "If yes, please specify the places the patient travelled to and date of departure from the places:"
* item[5].item[1].item[0].repeats = true
* item[5].item[1].item[0].type    = #group
* item[5].item[1].item[0].enableWhen[0].question  = "expo_travel"
* item[5].item[1].item[0].enableWhen[0].operator  = #=
* item[5].item[1].item[0].enableWhen[0].answerCoding  = http://terminology.hl7.org/CodeSystem/v2-0136#Y

* item[5].item[1].item[0].item[0].linkId  = "expo_travel_country"
* item[5].item[1].item[0].item[0].text    = "Country:"
* item[5].item[1].item[0].item[0].type    = #string

* item[5].item[1].item[0].item[1].linkId  = "expo_travel_city"
* item[5].item[1].item[0].item[1].text    = "City:"
* item[5].item[1].item[0].item[1].type    = #string

* item[5].item[1].item[0].item[2].linkId  = "expo_travel_date"
* item[5].item[1].item[0].item[2].text    = "Date of Departure from the place:"
* item[5].item[1].item[0].item[2].type    = #string

* item[5].item[2].linkId  = "expo_visit_healthcare"
* item[5].item[2].text  = "Has case visited any health care facility in the 14 days prior to symptom onset?"
* item[5].item[2].type  = #choice
* item[5].item[2].answerValueSet = Canonical(WhoCrValueSetYesNoUnk)

* item[5].item[3].linkId  = "expo_contact_case"
* item[5].item[3].text  = "Has case had contact with a confirmed case in the 14 days prior to symptom onset?"
* item[5].item[3].type  = #choice
* item[5].item[3].answerValueSet = Canonical(WhoCrValueSetYesNoUnk)

* item[5].item[3].item[0].linkId  = "expo_contacts"
* item[5].item[3].item[0].text    = "If yes, please list unique case identifiers of all probable or confirmed cases:"
* item[5].item[3].item[0].repeats = true
* item[5].item[3].item[0].type    = #group
* item[5].item[3].item[0].enableWhen[0].question  = "expo_contact_case"
* item[5].item[3].item[0].enableWhen[0].operator  = #=
* item[5].item[3].item[0].enableWhen[0].answerCoding  = http://terminology.hl7.org/CodeSystem/v2-0136#Y

* item[5].item[3].item[0].item[0].linkId  = "expo_ID"
* item[5].item[3].item[0].item[0].text    = "Contact ID"
* item[5].item[3].item[0].item[0].type    = #string

* item[5].item[3].item[0].item[1].linkId  = "expo_case_date_first"
* item[5].item[3].item[0].item[1].text    = "First Date of Contact"
* item[5].item[3].item[0].item[1].type    = #string

* item[5].item[3].item[0].item[2].linkId  = "expo_case_date_last"
* item[5].item[3].item[0].item[2].text    = "Last Date of Contact"
* item[5].item[3].item[0].item[2].type    = #string

* item[5].item[3].item[1].linkId  = "expo_case_setting_detail"
* item[5].item[3].item[1].text    = "If yes, please explain contact setting:"
* item[5].item[3].item[1].type    = #string
* item[5].item[3].item[1].enableWhen[0].question  = "expo_contact_case"
* item[5].item[3].item[1].enableWhen[0].operator  = #=
* item[5].item[3].item[1].enableWhen[0].answerCoding  = http://terminology.hl7.org/CodeSystem/v2-0136#Y

* item[5].item[4].linkId  = "expo_case_location"
* item[5].item[4].text    = "Most likely country of exposure:"
* item[5].item[4].type    = #string

* item[6].linkId    = "section_outcome"
* item[6].text      = "Outcome"
* item[6].type      = #group

* item[6].item[0].linkId    = "outcome_instruct"
* item[6].item[0].text      = "Complete and re-sent the full form as soon as outcome of disease is known or after 30 days after initial report."
* item[6].item[0].type      = #display

* item[6].item[1].linkId    = "outcome_submitted_date"
* item[6].item[1].text      = "Date of re-submission of this report:"
* item[6].item[1].type      = #date

* item[6].item[2].linkId    = "outcome_asymp"
* item[6].item[2].text      = "If case was asymptomatic at time of specimen collection resulting in first laboratory confirmation, did the case develop any symptoms or signs at any time prior to discharge or death:"
* item[6].item[2].type      = #choice
//* item[6].item[2].answerValueSet = Canonical(WhoCrValueSetYesNoUnk)
* item[6].item[2].answerOption[0].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0136#N // "No (i.e., case remains asymptomatic)"
* item[6].item[2].answerOption[1].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y // "Yes, asymptomatic case (as previously reported) developed symptoms and/or signs of illness"
* item[6].item[2].answerOption[2].valueCoding = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown // "Unknown"

* item[6].item[3].linkId    = "outcome_asymp_date"
* item[6].item[3].text      = "Date of onset of symptoms/signs of illness:"
* item[6].item[3].type      = #date
* item[6].item[3].enableWhen[0].question  = "outcome_asymp"
* item[6].item[3].enableWhen[0].operator  = #=
* item[6].item[3].enableWhen[0].answerCoding  = http://terminology.hl7.org/CodeSystem/v2-0136#Y

* item[6].item[4].linkId  = "section_clinical_course"
* item[6].item[4].text    = "Clinical Course:"
* item[6].item[4].type    = #group

* item[6].item[4].item[0].linkId  = "outcome_patcourse_admit"
* item[6].item[4].item[0].text    = "Admission to hospital (may have been previously reported):"
* item[6].item[4].item[0].type    = #choice
* item[6].item[4].item[0].answerValueSet = Canonical(WhoCrValueSetYesNoUnk)

* item[6].item[4].item[1].linkId  = "outcome_patcourse_presHCF"
* item[6].item[4].item[1].text    = "First date of admission to hospital:"
* item[6].item[4].item[1].type    = #date
* item[6].item[4].item[1].enableWhen[0].question  = "outcome_patcourse_admit"
* item[6].item[4].item[1].enableWhen[0].operator  = #=
* item[6].item[4].item[1].enableWhen[0].answerCoding  = http://terminology.hl7.org/CodeSystem/v2-0136#Y

* item[6].item[4].item[2].linkId  = "section_outcome_admission"
* item[6].item[4].item[2].text    = "If yes:"
* item[6].item[4].item[2].type    = #group
* item[6].item[4].item[2].enableWhen[0].question  = "outcome_patcourse_admit"
* item[6].item[4].item[2].enableWhen[0].operator  = #=
* item[6].item[4].item[2].enableWhen[0].answerCoding  = http://terminology.hl7.org/CodeSystem/v2-0136#Y

* item[6].item[4].item[2].item[0].linkId  = "outcome_patcourse_icu"
* item[6].item[4].item[2].item[0].text    = "Did the case receive care in an intensive care unit (ICU)?"
* item[6].item[4].item[2].item[0].type    = #choice
* item[6].item[4].item[2].item[0].answerValueSet = Canonical(WhoCrValueSetYesNoUnk)

* item[6].item[4].item[2].item[1].linkId  = "outcome_patcourse_vent"
* item[6].item[4].item[2].item[1].text    = "Did the case receive ventilation?"
* item[6].item[4].item[2].item[1].type    = #choice
* item[6].item[4].item[2].item[1].answerValueSet = Canonical(WhoCrValueSetYesNoUnk)

* item[6].item[4].item[2].item[2].linkId  = "outcome_patcourse_ecmo"
* item[6].item[4].item[2].item[2].text    = "Did the case receive extracorporeal membrane oxygenation?"
* item[6].item[4].item[2].item[2].type    = #choice
* item[6].item[4].item[2].item[2].answerValueSet = Canonical(WhoCrValueSetYesNoUnk)

* item[6].item[5].linkId  = "outcome_patcourse_status"
* item[6].item[5].text    = "Health Outcome:"
* item[6].item[5].type    = #choice
* item[6].item[5].answerValueSet = Canonical(WhoCrValueSetPatientOutcome)

* item[6].item[6].linkId  = "outcome_patcourse_status_other"
* item[6].item[6].text    = "If other, please explain:"
* item[6].item[6].type    = #string
* item[6].item[6].enableWhen[0].question  = "outcome_patcourse_status"
* item[6].item[6].enableWhen[0].operator  = #=
* item[6].item[6].enableWhen[0].answerCoding = WhoCrCodeSystemPatientOutcome#OTHER

* item[6].item[7].linkId  = "outcome_date_of_outcome"
* item[6].item[7].text    = "Date of Release from isolation/hospital or Date of Death:"
* item[6].item[7].type    = #date

* item[6].item[8].linkId  = "outcome_lab_date"
* item[6].item[8].text    = "Results of last test:"
* item[6].item[8].type    = #choice
* item[6].item[8].answerValueSet = Canonical(WhoCrValueSetTestResult)

* item[6].item[9].linkId  = "outcome_contacts_followed"
* item[6].item[9].text    = "Total number of contacts followed for this case:"
* item[6].item[9].type    = #integer

* item[6].item[10].linkId  = "outcome_contacts_followed_unknown"
* item[6].item[10].text    = "Unknown:"
* item[6].item[10].type    = #boolean

