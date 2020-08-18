Instance: WhoCrDataDictionary
InstanceOf: StructureDefinition
Description: "Data Dictionary Logical Model"
Title: "2020-02-27 Data Dictionary"
Usage: #definition

* insert PublisherContext
* name = "WhoCrSurveillanceDataDictionary"
* id = "WhoCrSurveillanceDataDictionary"
* url = "http://who.int/fhir/cr/StructureDefinition/SurveillanceDataDictionary"
* version = "0.1.0"
* status = #draft
* kind = #logical
* abstract = false
* type = "WhoCrSurveillanceDataDictionary"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization

* differential.element[0].id = "WhoCrSurveillanceDataDictionary"
* differential.element[0].path = "WhoCrSurveillanceDataDictionary"
* differential.element[0].definition = "WhoCrSurveillanceDataDictionary"
* differential.element[0].min = 0
* differential.element[0].max = "*"

* differential.element[1].id = "WhoCrSurveillanceDataDictionary.report.date"
* differential.element[1].path = "WhoCrSurveillanceDataDictionary.report.date"
* differential.element[1].short = "Date of reporting"
* differential.element[1].definition = "Date of reporting"
* differential.element[1].type.code = #date
* differential.element[1].min = 0
* differential.element[1].max = "1"

* differential.element[2].id = "WhoCrSurveillanceDataDictionary.report.country"
* differential.element[2].path = "WhoCrSurveillanceDataDictionary.report.country"
* differential.element[2].short = "Reporting country"
* differential.element[2].definition = "Country/territory/national boundary within which the case currently/usually resides.\nIf transborders or international spread of outbreak"
* differential.element[2].type.code = #CodeableConcept
* differential.element[2].min = 0
* differential.element[2].max = "1"

* differential.element[3].id = "WhoCrSurveillanceDataDictionary.report.testReason"
* differential.element[3].path = "WhoCrSurveillanceDataDictionary.report.testReason"
* differential.element[3].short = "Why the case was tested for COVID-19"
* differential.element[3].definition = "Why the case was tested for COVID-19"
* differential.element[3].type.code = #CodeableConcept
* differential.element[3].min = 0
* differential.element[3].max = "1"
* differential.element[3].binding.valueSet = Canonical(WhoCrValueSetReasonForCovid19Testing)
* differential.element[3].binding.strength = #extensible

* differential.element[4].id = "WhoCrSurveillanceDataDictionary.report.testReasonOther"
* differential.element[4].path = "WhoCrSurveillanceDataDictionary.report.testReasonOther"
* differential.element[4].short = "Other reason the case was tested for COVID-19"
* differential.element[4].definition = "Any other reason the case was tested for COVID-19"
* differential.element[4].type.code = #string
* differential.element[4].min = 0
* differential.element[4].max = "1"

* differential.element[5].id = "WhoCrSurveillanceDataDictionary.patientInfo.caseId"
* differential.element[5].path = "WhoCrSurveillanceDataDictionary.patientInfo.caseId"
* differential.element[5].short = "Country case ID"
* differential.element[5].definition = "Unique case identification number (used in country)"
* differential.element[5].type.code = #Identifier
* differential.element[5].min = 0
* differential.element[5].max = "1"

* differential.element[6].id = "WhoCrSurveillanceDataDictionary.patientInfo.onsetAge"
* differential.element[6].path = "WhoCrSurveillanceDataDictionary.patientInfo.onsetAge"
* differential.element[6].short = "Age"
* differential.element[6].definition = "Age on the date of illness onset"
* differential.element[6].type.code = #Age
* differential.element[6].min = 0
* differential.element[6].max = "1"

* differential.element[7].id = "WhoCrSurveillanceDataDictionary.patientInfo.birthSex"
* differential.element[7].path = "WhoCrSurveillanceDataDictionary.patientInfo.birthSex"
* differential.element[7].short = "Sex at birth"
* differential.element[7].definition = "Biological sex. That is the biological differential characteristics (chromosomes, hormonal profiles, internal and external sex organs) that best describes the case."
* differential.element[7].type.code = #Coding
* differential.element[7].min = 0
* differential.element[7].max = "1"
* differential.element[7].binding.valueSet = Canonical(WhoCrValueSetSexAtBirth)
* differential.element[7].binding.strength = #required

* differential.element[8].id = "WhoCrSurveillanceDataDictionary.patientInfo.identified.admin0"
* differential.element[8].path = "WhoCrSurveillanceDataDictionary.patientInfo.identified.admin0"
* differential.element[8].short = "Where the case was diagnosed, admin level 0 (country)"
* differential.element[8].definition = "Administrative level 0: Country where the case was diagnosed."
* differential.element[8].type.code = #CodeableConcept
* differential.element[8].min = 0
* differential.element[8].max = "1"

* differential.element[9].id = "WhoCrSurveillanceDataDictionary.patientInfo.identified.admin1"
* differential.element[9].path = "WhoCrSurveillanceDataDictionary.patientInfo.identified.admin1"
* differential.element[9].short = "Where the case was diagnosed, admin level 1 (country)"
* differential.element[9].definition = "Administrative level 1: First sub-national boundary (e.g. province, state, territory prefecture, region, etc.) where the case was diagnosed."
* differential.element[9].type.code = #CodeableConcept
* differential.element[9].min = 0
* differential.element[9].max = "1"

* differential.element[10].id = "WhoCrSurveillanceDataDictionary.patientInfo.residence.admin0"
* differential.element[10].path = "WhoCrSurveillanceDataDictionary.patientInfo.residence.admin0"
* differential.element[10].short = "Place of residence admin level 0"
* differential.element[10].definition = "Administrative level 0: Country within which the case's currently/usually resides."
* differential.element[10].type.code = #CodeableConcept
* differential.element[10].min = 0
* differential.element[10].max = "1"

* differential.element[11].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.lab.confirmedDate"
* differential.element[11].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.lab.confirmedDate"
* differential.element[11].short = "Date of first laboratory confirmation"
* differential.element[11].definition = "Date of first laboratory confirmation"
* differential.element[11].type.code = #date
* differential.element[11].min = 0
* differential.element[11].max = "1"

* differential.element[12].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.onsetDate"
* differential.element[12].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.onsetDate"
* differential.element[12].short = "Date of onset of first symptoms"
* differential.element[12].definition = "Date of first appearance of the signs or symptoms of the illness/disease."
* differential.element[12].type.code = #date
* differential.element[12].min = 0
* differential.element[12].max = "1"

* differential.element[13].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.asymptomatic"
* differential.element[13].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.asymptomatic"
* differential.element[13].short = "Patient asymptomatic at time of specimen collection"
* differential.element[13].definition = "Is the case asymptomatic?"
* differential.element[13].type.code = #Coding
* differential.element[13].min = 0
* differential.element[13].max = "1"
* differential.element[13].binding.valueSet = Canonical(WhoCrValueSetYesNoUnk)
* differential.element[13].binding.strength = #required

* differential.element[14].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.wasAdmitted"
* differential.element[14].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.wasAdmitted"
* differential.element[14].short = "admission to hospital?"
* differential.element[14].definition = "Was the case hospitalized, admitted to a hospital or other health facility as an inpatient?"
* differential.element[14].type.code = #Coding
* differential.element[14].min = 0
* differential.element[14].max = "1"
* differential.element[14].binding.valueSet = Canonical(WhoCrValueSetYesNoUnk)
* differential.element[14].binding.strength = #required

* differential.element[15].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.presHCF"
* differential.element[15].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.presHCF"
* differential.element[15].short = "For this episode, date first admitted in hospital"
* differential.element[15].definition = "Date the case was first admitted to any health facility."
* differential.element[15].type.code = #date
* differential.element[15].min = 0
* differential.element[15].max = "1"

* differential.element[16].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.receivedIcuCare"
* differential.element[16].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.receivedIcuCare"
* differential.element[16].short = "Did the patient receive care in an ICU?"
* differential.element[16].definition = "Did the patient receive care in an intensive care unit (ICU)?"
* differential.element[16].type.code = #Coding
* differential.element[16].min = 0
* differential.element[16].max = "1"
* differential.element[16].binding.valueSet = Canonical(WhoCrValueSetYesNoUnk)
* differential.element[16].binding.strength = #required

* differential.element[17].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.ventilated"
* differential.element[17].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.ventilated"
* differential.element[17].short = "Was the patient ventilated?"
* differential.element[17].definition = "Was the patient ever ventilated for this episode at time of reporting?"
* differential.element[17].type.code = #Coding
* differential.element[17].min = 0
* differential.element[17].max = "1"
* differential.element[17].binding.valueSet = Canonical(WhoCrValueSetYesNoUnk)
* differential.element[17].binding.strength = #required

* differential.element[18].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.receivedEcmo"
* differential.element[18].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.receivedEcmo"
* differential.element[18].short = "Did the patient receive ECMO?"
* differential.element[18].definition = "Did the patient receive extracorporeal membrane oxygenation (ECMO)?"
* differential.element[18].type.code = #Coding
* differential.element[18].min = 0
* differential.element[18].max = "1"
* differential.element[18].binding.valueSet = Canonical(WhoCrValueSetYesNoUnk)
* differential.element[18].binding.strength = #required

* differential.element[19].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.wasIsolated"
* differential.element[19].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.wasIsolated"
* differential.element[19].short = "Was the case isolated?"
* differential.element[19].definition = "Was the case isolated with proper IPC controls implemented?"
* differential.element[19].type.code = #Coding
* differential.element[19].min = 0
* differential.element[19].max = "1"
* differential.element[19].binding.valueSet = Canonical(WhoCrValueSetYesNoUnk)
* differential.element[19].binding.strength = #required

* differential.element[20].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.isolatedDate"
* differential.element[20].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.isolatedDate"
* differential.element[20].short = "date of isolation"
* differential.element[20].definition = "What date was the case isolated?"
* differential.element[20].type.code = #date
* differential.element[20].min = 0
* differential.element[20].max = "1"

* differential.element[21].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.present"
* differential.element[21].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.present"
* differential.element[21].short = "Does the patient have any underlying conditions?"
* differential.element[21].definition = "Does the patient have any underlying conditions?"
* differential.element[21].type.code = #Coding
* differential.element[21].min = 0
* differential.element[21].max = "1"
* differential.element[21].binding.valueSet = Canonical(WhoCrValueSetYesNoUnk)
* differential.element[21].binding.strength = #required

* differential.element[22].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.pregnant"
* differential.element[22].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.pregnant"
* differential.element[22].short = "Pregnancy?"
* differential.element[22].definition = "Is the patient pregnant?"
* differential.element[22].type.code = #boolean
* differential.element[22].min = 0
* differential.element[22].max = "1"

* differential.element[23].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.pregnantTrimester"
* differential.element[23].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.pregnantTrimester"
* differential.element[23].short = "Trimester of pregancy"
* differential.element[23].definition = "Trimester of pregancy"
* differential.element[23].type.code = #Coding
* differential.element[23].min = 0
* differential.element[23].max = "1"
* differential.element[23].binding.valueSet = Canonical(WhoCrValueSetPregnancyTrimester)
* differential.element[23].binding.strength = #required

* differential.element[24].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.postpartum"
* differential.element[24].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.postpartum"
* differential.element[24].short = "Post-partum (<6 weeks)"
* differential.element[24].definition = "Is the patient in the post-partum period defined as less than 6 weeks after delivery date?"
* differential.element[24].type.code = #boolean
* differential.element[24].min = 0
* differential.element[24].max = "1"

* differential.element[25].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.immunodeficiency"
* differential.element[25].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.immunodeficiency"
* differential.element[25].short = "Immunodeficiency including HIV?"
* differential.element[25].definition = "Has the patient an acquired immunodeficiency (HIV) or is the patient treated with drugs that decreased immune response (corticoides, anti cancer chemotherapy)?"
* differential.element[25].type.code = #boolean
* differential.element[25].min = 0
* differential.element[25].max = "1"

* differential.element[26].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.cardiovacsular"
* differential.element[26].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.cardiovacsular"
* differential.element[26].short = "Cardiovacsular disease including hypertension?"
* differential.element[26].definition = "any cardiovacsular disease?"
* differential.element[26].type.code = #boolean
* differential.element[26].min = 0
* differential.element[26].max = "1"

* differential.element[27].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.diabetes"
* differential.element[27].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.diabetes"
* differential.element[27].short = "Diabetes?"
* differential.element[27].definition = "Diabetes?"
* differential.element[27].type.code = #boolean
* differential.element[27].min = 0
* differential.element[27].max = "1"

* differential.element[28].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.liver"
* differential.element[28].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.liver"
* differential.element[28].short = "Liver disease?"
* differential.element[28].definition = "any liver diseases"
* differential.element[28].type.code = #boolean
* differential.element[28].min = 0
* differential.element[28].max = "1"

* differential.element[29].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.renal"
* differential.element[29].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.renal"
* differential.element[29].short = "Renal disease?"
* differential.element[29].definition = "any renal diseases?"
* differential.element[29].type.code = #boolean
* differential.element[29].min = 0
* differential.element[29].max = "1"

* differential.element[30].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.neuro"
* differential.element[30].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.neuro"
* differential.element[30].short = "Chronic neurological or neuromuscular disease"
* differential.element[30].definition = "Chronic neurological or neuromuscular disease"
* differential.element[30].type.code = #boolean
* differential.element[30].min = 0
* differential.element[30].max = "1"

* differential.element[31].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.malignancy"
* differential.element[31].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.malignancy"
* differential.element[31].short = "Malignancy"
* differential.element[31].definition = "Malignancy"
* differential.element[31].type.code = #boolean
* differential.element[31].min = 0
* differential.element[31].max = "1"

* differential.element[32].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.lung"
* differential.element[32].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.lung"
* differential.element[32].short = "Chronic lung disease?"
* differential.element[32].definition = "Chronic lung disease?"
* differential.element[32].type.code = #boolean
* differential.element[32].min = 0
* differential.element[32].max = "1"

* differential.element[33].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.other"
* differential.element[33].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.other"
* differential.element[33].short = "Other, specify?"
* differential.element[33].definition = "Describe other underlying conditions and comorbidity"
* differential.element[33].type.code = #string
* differential.element[33].min = 0
* differential.element[33].max = "1"

* differential.element[34].id = "WhoCrSurveillanceDataDictionary.exposure.patientInfo.hcw.isHealthcareWorker"
* differential.element[34].path = "WhoCrSurveillanceDataDictionary.exposure.patientInfo.hcw.isHealthcareWorker"
* differential.element[34].short = "Health care worker"
* differential.element[34].definition = "Is the patient working in a health care setting?"
* differential.element[34].type.code = #Coding
* differential.element[34].min = 0
* differential.element[34].max = "1"
* differential.element[34].binding.valueSet = Canonical(WhoCrValueSetYesNoUnk)
* differential.element[34].binding.strength = #required

* differential.element[35].id = "WhoCrSurveillanceDataDictionary.exposure.patientInfo.hcw.workCountry"
* differential.element[35].path = "WhoCrSurveillanceDataDictionary.exposure.patientInfo.hcw.workCountry"
* differential.element[35].short = "Healthcare worker country"
* differential.element[35].definition = "If case is a healthcare worker, in which country do they work?"
* differential.element[35].type.code = #CodeableConcept
* differential.element[35].min = 0
* differential.element[35].max = "1"

* differential.element[36].id = "WhoCrSurveillanceDataDictionary.exposure.patientInfo.hcw.workCity"
* differential.element[36].path = "WhoCrSurveillanceDataDictionary.exposure.patientInfo.hcw.workCity"
* differential.element[36].short = "Healthcare worker city"
* differential.element[36].definition = "If case is a healthcare worker, in which city do they work?"
* differential.element[36].type.code = #string
* differential.element[36].min = 0
* differential.element[36].max = "1"

* differential.element[37].id = "WhoCrSurveillanceDataDictionary.exposure.patientInfo.hcw.facilityName"
* differential.element[37].path = "WhoCrSurveillanceDataDictionary.exposure.patientInfo.hcw.facilityName"
* differential.element[37].short = "Healthcare worker facility name"
* differential.element[37].definition = "If case is a healthcare worker, what is the name of the facility in which they work?"
* differential.element[37].type.code = #string
* differential.element[37].min = 0
* differential.element[37].max = "1"

* differential.element[38].id = "WhoCrSurveillanceDataDictionary.exposure.travel.hasTravelled"
* differential.element[38].path = "WhoCrSurveillanceDataDictionary.exposure.travel.hasTravelled"
* differential.element[38].short = "Has the patient travelled in the 14 days prior to symptom onset?"
* differential.element[38].definition = "Has the patient travelled in the 14 days prior to symptom onset?"
* differential.element[38].type.code = #Coding
* differential.element[38].min = 0
* differential.element[38].max = "1"
* differential.element[38].binding.valueSet = Canonical(WhoCrValueSetYesNoUnk)
* differential.element[38].binding.strength = #required

* differential.element[39].id = "WhoCrSurveillanceDataDictionary.exposure.travel.location"
* differential.element[39].path = "WhoCrSurveillanceDataDictionary.exposure.travel.location"
* differential.element[39].short = "Locations of travel"
* differential.element[39].definition = "Locations of travel in the 14 days prior to symptom onset"
* differential.element[39].type.code = #BackboneElement
* differential.element[39].min = 0
* differential.element[39].max = "*"

* differential.element[40].id = "WhoCrSurveillanceDataDictionary.exposure.travel.location.country"
* differential.element[40].path = "WhoCrSurveillanceDataDictionary.exposure.travel.location.country"
* differential.element[40].short = "Country travelled to"
* differential.element[40].definition = "Specify country of travel for this location"
* differential.element[40].type.code = #CodeableConcept
* differential.element[40].min = 0
* differential.element[40].max = "1"

* differential.element[41].id = "WhoCrSurveillanceDataDictionary.exposure.travel.location.city"
* differential.element[41].path = "WhoCrSurveillanceDataDictionary.exposure.travel.location.city"
* differential.element[41].short = "City travelled to"
* differential.element[41].definition = "Specify city travelled to for this location"
* differential.element[41].type.code = #string
* differential.element[41].min = 0
* differential.element[41].max = "1"

* differential.element[42].id = "WhoCrSurveillanceDataDictionary.exposure.travel.location.departureDate"
* differential.element[42].path = "WhoCrSurveillanceDataDictionary.exposure.travel.location.departureDate"
* differential.element[42].short = "Date of departure"
* differential.element[42].definition = "Specify date of departure from this location"
* differential.element[42].type.code = #date
* differential.element[42].min = 0
* differential.element[42].max = "1"

* differential.element[43].id = "WhoCrSurveillanceDataDictionary.exposure.visitedHealthcare"
* differential.element[43].path = "WhoCrSurveillanceDataDictionary.exposure.visitedHealthcare"
* differential.element[43].short = "Has the patient visited any health care facilities in the 14 days prior to symptom onset"
* differential.element[43].definition = "Has the patient visited any health care facilities in the 14 days prior to symptom onset"
* differential.element[43].type.code = #Coding
* differential.element[43].min = 0
* differential.element[43].max = "1"
* differential.element[43].binding.valueSet = Canonical(WhoCrValueSetYesNoUnk)
* differential.element[43].binding.strength = #required

* differential.element[44].id = "WhoCrSurveillanceDataDictionary.exposure.caseContact"
* differential.element[44].path = "WhoCrSurveillanceDataDictionary.exposure.caseContact"
* differential.element[44].short = "Has the patient had contact with a confirmed case?"
* differential.element[44].definition = "Has the patient had contact with a confirmed case in the 14 days prior to disease onset?"
* differential.element[44].type.code = #Coding
* differential.element[44].min = 0
* differential.element[44].max = "1"
* differential.element[44].binding.valueSet = Canonical(WhoCrValueSetYesNoUnk)
* differential.element[44].binding.strength = #required

* differential.element[45].id = "WhoCrSurveillanceDataDictionary.exposure.contactSetting"
* differential.element[45].path = "WhoCrSurveillanceDataDictionary.exposure.contactSetting"
* differential.element[45].short = "Explain contact setting"
* differential.element[45].definition = "If the patient has had contact with a confirmed case in the 14 days prior to symptom onset, explain contact setting"
* differential.element[45].type.code = #string
* differential.element[45].min = 0
* differential.element[45].max = "1"

* differential.element[46].id = "WhoCrSurveillanceDataDictionary.exposure.contact"
* differential.element[46].path = "WhoCrSurveillanceDataDictionary.exposure.contact"
* differential.element[46].short = "Confirmed case contact"
* differential.element[46].definition = "Confirmed case contact"
* differential.element[46].type.code = #BackboneElement
* differential.element[46].min = 0
* differential.element[46].max = "*"

* differential.element[47].id = "WhoCrSurveillanceDataDictionary.exposure.contact.identifier"
* differential.element[47].path = "WhoCrSurveillanceDataDictionary.exposure.contact.identifier"
* differential.element[47].short = "ID number of confirmed case"
* differential.element[47].definition = "Unique identifier of confirmed case with whom the patient had contact"
* differential.element[47].type.code = #Identifier
* differential.element[47].min = 0
* differential.element[47].max = "1"

* differential.element[48].id = "WhoCrSurveillanceDataDictionary.exposure.contact.exposurePeriod"
* differential.element[48].path = "WhoCrSurveillanceDataDictionary.exposure.contact.exposurePeriod"
* differential.element[48].short = "Date range from first exposure to last exposure for confirmed case"
* differential.element[48].definition = "Date range from first exposure to last exposure for confirmed case"
* differential.element[48].type.code = #Period
* differential.element[48].min = 0
* differential.element[48].max = "1"

* differential.element[49].id = "WhoCrSurveillanceDataDictionary.exposure.contactCountry"
* differential.element[49].path = "WhoCrSurveillanceDataDictionary.exposure.contactCountry"
* differential.element[49].short = "Likely country for exposure to case?"
* differential.element[49].definition = "Specify the location of possible exposure to a case"
* differential.element[49].type.code = #CodeableConcept
* differential.element[49].min = 0
* differential.element[49].max = "1"

* differential.element[50].id = "WhoCrSurveillanceDataDictionary.outcome.submissionDate"
* differential.element[50].path = "WhoCrSurveillanceDataDictionary.outcome.submissionDate"
* differential.element[50].short = "Date of outcome submission"
* differential.element[50].definition = "Date of outcome submission"
* differential.element[50].type.code = #date
* differential.element[50].min = 0
* differential.element[50].max = "1"

* differential.element[51].id = "WhoCrSurveillanceDataDictionary.outcome.symptomatic"
* differential.element[51].path = "WhoCrSurveillanceDataDictionary.outcome.symptomatic"
* differential.element[51].short = "Asymptomatic case developed symptoms"
* differential.element[51].definition = "If case was asymptomatic at time of specimen collection resulting in first laboratory confirmation, did the case develop any symptoms or signs at any time prior to discharge or death"
* differential.element[51].type.code = #Coding
* differential.element[51].min = 0
* differential.element[51].max = "1"
* differential.element[51].binding.valueSet = Canonical(WhoCrValueSetYesNoUnk)
* differential.element[51].binding.strength = #required

* differential.element[52].id = "WhoCrSurveillanceDataDictionary.outcome.symptomaticDate"
* differential.element[52].path = "WhoCrSurveillanceDataDictionary.outcome.symptomaticDate"
* differential.element[52].short = "Date case developed symptoms"
* differential.element[52].definition = "If case was asymptomatic and developed symptoms, what is the date of onset for symptoms/signs of illness"
* differential.element[52].type.code = #date
* differential.element[52].min = 0
* differential.element[52].max = "1"

* differential.element[53].id = "WhoCrSurveillanceDataDictionary.outcome.patientCourse.wasAdmitted"
* differential.element[53].path = "WhoCrSurveillanceDataDictionary.outcome.patientCourse.wasAdmitted"
* differential.element[53].short = "Patient was admitted to hospital"
* differential.element[53].definition = "Patient was first admitted to hospital (outcome)"
* differential.element[53].type.code = #Coding
* differential.element[53].min = 0
* differential.element[53].max = "1"
* differential.element[53].binding.valueSet = Canonical(WhoCrValueSetYesNoUnk)
* differential.element[53].binding.strength = #required

* differential.element[54].id = "WhoCrSurveillanceDataDictionary.outcome.patientCourse.presHCF"
* differential.element[54].path = "WhoCrSurveillanceDataDictionary.outcome.patientCourse.presHCF"
* differential.element[54].short = "Date patient admitted to hospital"
* differential.element[54].definition = "Date patient was first admitted to hospital (outcome)"
* differential.element[54].type.code = #date
* differential.element[54].min = 0
* differential.element[54].max = "1"

* differential.element[55].id = "WhoCrSurveillanceDataDictionary.outcome.patientCourse.receivedIcuCare"
* differential.element[55].path = "WhoCrSurveillanceDataDictionary.outcome.patientCourse.receivedIcuCare"
* differential.element[55].short = "Did the patient receive care in an intensive care unit (ICU)? (outcome)"
* differential.element[55].type.code = #Coding
* differential.element[55].min = 0
* differential.element[55].max = "1"
* differential.element[55].binding.valueSet = Canonical(WhoCrValueSetYesNoUnk)
* differential.element[55].binding.strength = #required

* differential.element[56].id = "WhoCrSurveillanceDataDictionary.outcome.patientCourse.ventilated"
* differential.element[56].path = "WhoCrSurveillanceDataDictionary.outcome.patientCourse.ventilated"
* differential.element[56].short = "Was the patient ventilated?"
* differential.element[56].definition = "Was the patient ever ventilated for this episode? (outcome)"
* differential.element[56].type.code = #Coding
* differential.element[56].min = 0
* differential.element[56].max = "1"
* differential.element[56].binding.valueSet = Canonical(WhoCrValueSetYesNoUnk)
* differential.element[56].binding.strength = #required

* differential.element[57].id = "WhoCrSurveillanceDataDictionary.outcome.patientCourse.receivedEcmo"
* differential.element[57].path = "WhoCrSurveillanceDataDictionary.outcome.patientCourse.receivedEcmo"
* differential.element[57].short = "Did the patient receive ECMO?"
* differential.element[57].definition = "Did the patient receive extracorporeal membrane oxygenation (ECMO)? (outcome)"
* differential.element[57].type.code = #Coding
* differential.element[57].min = 0
* differential.element[57].max = "1"
* differential.element[57].binding.valueSet = Canonical(WhoCrValueSetYesNoUnk)
* differential.element[57].binding.strength = #required

* differential.element[58].id = "WhoCrSurveillanceDataDictionary.outcome.patientCourse.status"
* differential.element[58].path = "WhoCrSurveillanceDataDictionary.outcome.patientCourse.status"
* differential.element[58].short = "Patient status (outcome)"
* differential.element[58].definition = "Patient status (outcome)"
* differential.element[58].type.code = #Coding
* differential.element[58].min = 0
* differential.element[58].max = "1"
* differential.element[58].binding.valueSet = Canonical(WhoCrValueSetPatientOutcome)
* differential.element[58].binding.strength = #required

* differential.element[59].id = "WhoCrSurveillanceDataDictionary.outcome.patientCourse.statusOther"
* differential.element[59].path = "WhoCrSurveillanceDataDictionary.outcome.patientCourse.statusOther"
* differential.element[59].short = "Other patient status (outcome)"
* differential.element[59].definition = "Other patient status (outcome)"
* differential.element[59].type.code = #string
* differential.element[59].min = 0
* differential.element[59].max = "1"

* differential.element[60].id = "WhoCrSurveillanceDataDictionary.outcome.outcomeDate"
* differential.element[60].path = "WhoCrSurveillanceDataDictionary.outcome.outcomeDate"
* differential.element[60].short = "Date of patient release or date of death"
* differential.element[60].definition = "Date of Release from isolation/hospital or Date of Death"
* differential.element[60].type.code = #date
* differential.element[60].min = 0
* differential.element[60].max = "1"

* differential.element[61].id = "WhoCrSurveillanceDataDictionary.outcome.labDate"
* differential.element[61].path = "WhoCrSurveillanceDataDictionary.outcome.labDate"
* differential.element[61].short = "If released, date of last laboratory test"
* differential.element[61].definition = "If released from hospital /isolation, date of last laboratory test"
* differential.element[61].type.code = #date
* differential.element[61].min = 0
* differential.element[61].max = "1"

* differential.element[62].id = "WhoCrSurveillanceDataDictionary.outcome.labResult"
* differential.element[62].path = "WhoCrSurveillanceDataDictionary.outcome.labResult"
* differential.element[62].short = "laboratory result from last test"
* differential.element[62].definition = "laboratory result from last test"
* differential.element[62].type.code = #Coding
* differential.element[62].min = 0
* differential.element[62].max = "1"
* differential.element[62].binding.valueSet = Canonical(WhoCrValueSetTestResult)
* differential.element[62].binding.strength = #required

* differential.element[63].id = "WhoCrSurveillanceDataDictionary.outcome.contactsFollowed"
* differential.element[63].path = "WhoCrSurveillanceDataDictionary.outcome.contactsFollowed"
* differential.element[63].short = "High risk contacts followed from case"
* differential.element[63].definition = "Total number of high-risk contacts followed for this case"
* differential.element[63].type.code = #positiveInt
* differential.element[63].min = 0
* differential.element[63].max = "1"

* differential.element[64].id = "WhoCrSurveillanceDataDictionary.outcome.contactsFollowedUnknown"
* differential.element[64].path = "WhoCrSurveillanceDataDictionary.outcome.contactsFollowedUnknown"
* differential.element[64].short = "Number of high risk contacts followed unknown"
* differential.element[64].definition = "Number of high risk contacts followed unknown"
* differential.element[64].type.code = #Coding
* differential.element[64].min = 0
* differential.element[64].max = "1"
* differential.element[64].binding.valueSet = Canonical(WhoCrValueSetYesNoUnk)
* differential.element[64].binding.strength = #required
