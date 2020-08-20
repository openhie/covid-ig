Instance: WhoCrSurveillanceDataDictionary
InstanceOf: StructureDefinition
Description: "Data Dictionary Logical Model"
Title: "2020-02-27 Data Dictionary" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrSurveillanceDataDictionary" // computer ready name
* url = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary"
* version = "0.1.0"
* kind = #logical
* abstract = false
* type = "WhoCrSurveillanceDataDictionary"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization

* mapping[0].identity = "WhoCrDataDictionarySpreadsheet"
* mapping[0].name = "WHO CR Data Dictionary Spreadsheet 2020.2"

* differential.element[0].id = "WhoCrSurveillanceDataDictionary"
* differential.element[0].path = "WhoCrSurveillanceDataDictionary"
* differential.element[0].definition = "WhoCrSurveillanceDataDictionary"
* differential.element[0].min = 0
* differential.element[0].max = "*"

* differential.element[1].id = "WhoCrSurveillanceDataDictionary.report"
* differential.element[1].path = "WhoCrSurveillanceDataDictionary.report"
* differential.element[1].short = "Attributes of the case report"
* differential.element[1].definition = "Attributes of the case report"
* differential.element[1].type.code = #BackboneElement
* differential.element[1].min = 0
* differential.element[1].max = "1"

* differential.element[2].id = "WhoCrSurveillanceDataDictionary.report.date"
* differential.element[2].path = "WhoCrSurveillanceDataDictionary.report.date"
* differential.element[2].short = "Date of reporting"
* differential.element[2].definition = "Date of reporting"
* differential.element[2].type.code = #date
* differential.element[2].min = 0
* differential.element[2].max = "1"

* differential.element[3].id = "WhoCrSurveillanceDataDictionary.report.country"
* differential.element[3].path = "WhoCrSurveillanceDataDictionary.report.country"
* differential.element[3].short = "Reporting country"
* differential.element[3].definition = "Country/territory/national boundary within which the case currently/usually resides.\nIf transborders or international spread of outbreak"
* differential.element[3].type.code = #CodeableConcept
* differential.element[3].min = 0
* differential.element[3].max = "1"

* differential.element[4].id = "WhoCrSurveillanceDataDictionary.report.testReason"
* differential.element[4].path = "WhoCrSurveillanceDataDictionary.report.testReason"
* differential.element[4].short = "Why the case was tested for COVID-19"
* differential.element[4].definition = "Why the case was tested for COVID-19"
* differential.element[4].code = $LNC#67098-4
* differential.element[4].type.code = #CodeableConcept
* differential.element[4].min = 0
* differential.element[4].max = "1"
* differential.element[4].binding.valueSet = Canonical(WhoCrValueSetReasonForCovid19Testing)
* differential.element[4].binding.strength = #extensible

* differential.element[5].id = "WhoCrSurveillanceDataDictionary.report.testReasonOther"
* differential.element[5].path = "WhoCrSurveillanceDataDictionary.report.testReasonOther"
* differential.element[5].short = "Other reason the case was tested for COVID-19"
* differential.element[5].definition = "Any other reason the case was tested for COVID-19"
* differential.element[5].type.code = #string
* differential.element[5].min = 0
* differential.element[5].max = "1"

* differential.element[6].id = "WhoCrSurveillanceDataDictionary.patientInfo.caseId"
* differential.element[6].path = "WhoCrSurveillanceDataDictionary.patientInfo.caseId"
* differential.element[6].short = "Country case ID"
* differential.element[6].definition = "Unique case identification number (used in country)"
* differential.element[6].type.code = #Identifier
* differential.element[6].min = 0
* differential.element[6].max = "1"

* differential.element[7].id = "WhoCrSurveillanceDataDictionary.patientInfo"
* differential.element[7].path = "WhoCrSurveillanceDataDictionary.patientInfo"
* differential.element[7].short = "Case patient demographics"
* differential.element[7].definition = "Case patient demographics"
* differential.element[7].type.code = #BackboneElement
* differential.element[7].min = 0
* differential.element[7].max = "1"

* differential.element[8].id = "WhoCrSurveillanceDataDictionary.patientInfo.onsetAge"
* differential.element[8].path = "WhoCrSurveillanceDataDictionary.patientInfo.onsetAge"
* differential.element[8].short = "Age"
* differential.element[8].definition = "Age on the date of illness onset"
* differential.element[8].type.code = #Age
* differential.element[8].min = 0
* differential.element[8].max = "1"

* differential.element[9].id = "WhoCrSurveillanceDataDictionary.patientInfo.birthSex"
* differential.element[9].path = "WhoCrSurveillanceDataDictionary.patientInfo.birthSex"
* differential.element[9].short = "Sex at birth"
* differential.element[9].definition = "Biological sex. That is the biological differential characteristics (chromosomes, hormonal profiles, internal and external sex organs) that best describes the case."
* differential.element[9].type.code = #Coding
* differential.element[9].min = 0
* differential.element[9].max = "1"
* differential.element[9].binding.valueSet = Canonical(WhoCrValueSetSexAtBirth)
* differential.element[9].binding.strength = #required

* differential.element[10].id = "WhoCrSurveillanceDataDictionary.patientInfo.identified"
* differential.element[10].path = "WhoCrSurveillanceDataDictionary.patientInfo.identified"
* differential.element[10].short = "Details of the diagnosis of the case"
* differential.element[10].definition = "Details of the diagnosis of the case"
* differential.element[10].type.code = #BackboneElement
* differential.element[10].min = 0
* differential.element[10].max = "1"

* differential.element[11].id = "WhoCrSurveillanceDataDictionary.patientInfo.identified.admin0"
* differential.element[11].path = "WhoCrSurveillanceDataDictionary.patientInfo.identified.admin0"
* differential.element[11].short = "Where the case was diagnosed, admin level 0 (country)"
* differential.element[11].definition = "Administrative level 0: Country where the case was diagnosed."
* differential.element[11].type.code = #CodeableConcept
* differential.element[11].min = 0
* differential.element[11].max = "1"

* differential.element[12].id = "WhoCrSurveillanceDataDictionary.patientInfo.identified.admin1"
* differential.element[12].path = "WhoCrSurveillanceDataDictionary.patientInfo.identified.admin1"
* differential.element[12].short = "Where the case was diagnosed, admin level 1 (country)"
* differential.element[12].definition = "Administrative level 1: First sub-national boundary (e.g. province, state, territory prefecture, region, etc.) where the case was diagnosed."
* differential.element[12].type.code = #CodeableConcept
* differential.element[12].min = 0
* differential.element[12].max = "1"

* differential.element[13].id = "WhoCrSurveillanceDataDictionary.patientInfo.residence"
* differential.element[13].path = "WhoCrSurveillanceDataDictionary.patientInfo.residence"
* differential.element[13].short = "Details of the residence of the case"
* differential.element[13].definition = "Details of the residence of the case"
* differential.element[13].type.code = #BackboneElement
* differential.element[13].min = 0
* differential.element[13].max = "1"

* differential.element[14].id = "WhoCrSurveillanceDataDictionary.patientInfo.residence.admin0"
* differential.element[14].path = "WhoCrSurveillanceDataDictionary.patientInfo.residence.admin0"
* differential.element[14].short = "Place of residence admin level 0"
* differential.element[14].definition = "Administrative level 0: Country within which the case's currently/usually resides."
* differential.element[14].type.code = #CodeableConcept
* differential.element[14].min = 0
* differential.element[14].max = "1"

* differential.element[15].id = "WhoCrSurveillanceDataDictionary.clinicalStatus"
* differential.element[15].path = "WhoCrSurveillanceDataDictionary.clinicalStatus"
* differential.element[15].short = "Clinical status of the case on admission"
* differential.element[15].definition = "Clinical status of the case on admission"
* differential.element[15].type.code = #BackboneElement
* differential.element[15].min = 0
* differential.element[15].max = "1"

* differential.element[16].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.lab"
* differential.element[16].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.lab"
* differential.element[16].short = "Details of case lab testing"
* differential.element[16].definition = "Details of case lab testing"
* differential.element[16].type.code = #BackboneElement
* differential.element[16].min = 0
* differential.element[16].max = "1"

* differential.element[17].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.lab.confirmedDate"
* differential.element[17].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.lab.confirmedDate"
* differential.element[17].short = "Date of first laboratory confirmation"
* differential.element[17].definition = "Date of first laboratory confirmation"
* differential.element[17].type.code = #date
* differential.element[17].min = 0
* differential.element[17].max = "1"

* differential.element[18].id = "WhoCrSurveillanceDataDictionary.outcome"
* differential.element[18].path = "WhoCrSurveillanceDataDictionary.outcome"
* differential.element[18].short = "Patient outcome"
* differential.element[18].definition = "Patient outcome"
* differential.element[18].type.code = #BackboneElement
* differential.element[18].min = 0
* differential.element[18].max = "1"

* differential.element[19].id = "WhoCrSurveillanceDataDictionary.outcome.patientCourse"
* differential.element[19].path = "WhoCrSurveillanceDataDictionary.outcome.patientCourse"
* differential.element[19].short = "Outcome details of patient course of treatment"
* differential.element[19].definition = "Outcome details of patient course of treatment"
* differential.element[19].type.code = #BackboneElement
* differential.element[19].min = 0
* differential.element[19].max = "1"

* differential.element[20].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse"
* differential.element[20].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse"
* differential.element[20].short = "Details of the course of treatment of the case"
* differential.element[20].definition = "Details of the course of treatment of the case"
* differential.element[20].type.code = #BackboneElement
* differential.element[20].min = 0
* differential.element[20].max = "1"

* differential.element[21].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.onsetDate"
* differential.element[21].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.onsetDate"
* differential.element[21].short = "Date of onset of first symptoms"
* differential.element[21].definition = "Date of first appearance of the signs or symptoms of the illness/disease."
* differential.element[21].type.code = #date
* differential.element[21].min = 0
* differential.element[21].max = "1"

* differential.element[22].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.asymptomatic"
* differential.element[22].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.asymptomatic"
* differential.element[22].short = "Patient asymptomatic at time of specimen collection"
* differential.element[22].definition = "Is the case asymptomatic?"
* differential.element[22].type.code = #Coding
* differential.element[22].min = 0
* differential.element[22].max = "1"
* differential.element[22].binding.valueSet = Canonical(WhoCrValueSetYesNoUnk)
* differential.element[22].binding.strength = #required

* differential.element[23].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.wasAdmitted"
* differential.element[23].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.wasAdmitted"
* differential.element[23].short = "admission to hospital?"
* differential.element[23].definition = "Was the case hospitalized, admitted to a hospital or other health facility as an inpatient?"
* differential.element[23].type.code = #Coding
* differential.element[23].min = 0
* differential.element[23].max = "1"
* differential.element[23].binding.valueSet = Canonical(WhoCrValueSetYesNoUnk)
* differential.element[23].binding.strength = #required

* differential.element[24].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.presHCF"
* differential.element[24].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.presHCF"
* differential.element[24].short = "For this episode, date first admitted in hospital"
* differential.element[24].definition = "Date the case was first admitted to any health facility."
* differential.element[24].type.code = #date
* differential.element[24].min = 0
* differential.element[24].max = "1"

* differential.element[25].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.receivedIcuCare"
* differential.element[25].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.receivedIcuCare"
* differential.element[25].short = "Did the patient receive care in an ICU?"
* differential.element[25].definition = "Did the patient receive care in an intensive care unit (ICU)?"
* differential.element[25].type.code = #Coding
* differential.element[25].min = 0
* differential.element[25].max = "1"
* differential.element[25].binding.valueSet = Canonical(WhoCrValueSetYesNoUnk)
* differential.element[25].binding.strength = #required

* differential.element[26].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.ventilated"
* differential.element[26].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.ventilated"
* differential.element[26].short = "Was the patient ventilated?"
* differential.element[26].definition = "Was the patient ever ventilated for this episode at time of reporting?"
* differential.element[26].type.code = #Coding
* differential.element[26].min = 0
* differential.element[26].max = "1"
* differential.element[26].binding.valueSet = Canonical(WhoCrValueSetYesNoUnk)
* differential.element[26].binding.strength = #required

* differential.element[27].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.receivedEcmo"
* differential.element[27].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.receivedEcmo"
* differential.element[27].short = "Did the patient receive ECMO?"
* differential.element[27].definition = "Did the patient receive extracorporeal membrane oxygenation (ECMO)?"
* differential.element[27].type.code = #Coding
* differential.element[27].min = 0
* differential.element[27].max = "1"
* differential.element[27].binding.valueSet = Canonical(WhoCrValueSetYesNoUnk)
* differential.element[27].binding.strength = #required

* differential.element[28].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.wasIsolated"
* differential.element[28].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.wasIsolated"
* differential.element[28].short = "Was the case isolated?"
* differential.element[28].definition = "Was the case isolated with proper IPC controls implemented?"
* differential.element[28].type.code = #Coding
* differential.element[28].min = 0
* differential.element[28].max = "1"
* differential.element[28].binding.valueSet = Canonical(WhoCrValueSetYesNoUnk)
* differential.element[28].binding.strength = #required

* differential.element[29].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.isolatedDate"
* differential.element[29].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.isolatedDate"
* differential.element[29].short = "date of isolation"
* differential.element[29].definition = "What date was the case isolated?"
* differential.element[29].type.code = #date
* differential.element[29].min = 0
* differential.element[29].max = "1"

* differential.element[30].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities"
* differential.element[30].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities"
* differential.element[30].short = "Conditions and co-morbidities of the case"
* differential.element[30].definition = "Conditions and co-morbidities of the case"
* differential.element[30].type.code = #BackboneElement
* differential.element[30].min = 0
* differential.element[30].max = "1"

* differential.element[31].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.present"
* differential.element[31].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.present"
* differential.element[31].short = "Does the patient have any underlying conditions?"
* differential.element[31].definition = "Does the patient have any underlying conditions?"
* differential.element[31].type.code = #Coding
* differential.element[31].min = 0
* differential.element[31].max = "1"
* differential.element[31].binding.valueSet = Canonical(WhoCrValueSetYesNoUnk)
* differential.element[31].binding.strength = #required

* differential.element[32].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.pregnant"
* differential.element[32].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.pregnant"
* differential.element[32].short = "Pregnancy?"
* differential.element[32].definition = "Is the patient pregnant?"
* differential.element[32].type.code = #boolean
* differential.element[32].min = 0
* differential.element[32].max = "1"

* differential.element[33].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.pregnantTrimester"
* differential.element[33].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.pregnantTrimester"
* differential.element[33].short = "Trimester of pregancy"
* differential.element[33].definition = "Trimester of pregancy"
* differential.element[33].type.code = #Coding
* differential.element[33].min = 0
* differential.element[33].max = "1"
* differential.element[33].binding.valueSet = Canonical(WhoCrValueSetPregnancyTrimester)
* differential.element[33].binding.strength = #required

* differential.element[34].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.postpartum"
* differential.element[34].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.postpartum"
* differential.element[34].short = "Post-partum (<6 weeks)"
* differential.element[34].definition = "Is the patient in the post-partum period defined as less than 6 weeks after delivery date?"
* differential.element[34].type.code = #boolean
* differential.element[34].min = 0
* differential.element[34].max = "1"

* differential.element[35].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.immunodeficiency"
* differential.element[35].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.immunodeficiency"
* differential.element[35].short = "Immunodeficiency including HIV?"
* differential.element[35].definition = "Has the patient an acquired immunodeficiency (HIV) or is the patient treated with drugs that decreased immune response (corticoides, anti cancer chemotherapy)?"
* differential.element[35].type.code = #boolean
* differential.element[35].min = 0
* differential.element[35].max = "1"

* differential.element[36].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.cardiovacsular"
* differential.element[36].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.cardiovacsular"
* differential.element[36].short = "Cardiovacsular disease including hypertension?"
* differential.element[36].definition = "any cardiovacsular disease?"
* differential.element[36].type.code = #boolean
* differential.element[36].min = 0
* differential.element[36].max = "1"

* differential.element[37].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.diabetes"
* differential.element[37].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.diabetes"
* differential.element[37].short = "Diabetes?"
* differential.element[37].definition = "Diabetes?"
* differential.element[37].type.code = #boolean
* differential.element[37].min = 0
* differential.element[37].max = "1"

* differential.element[38].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.liver"
* differential.element[38].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.liver"
* differential.element[38].short = "Liver disease?"
* differential.element[38].definition = "any liver diseases"
* differential.element[38].type.code = #boolean
* differential.element[38].min = 0
* differential.element[38].max = "1"

* differential.element[39].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.renal"
* differential.element[39].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.renal"
* differential.element[39].short = "Renal disease?"
* differential.element[39].definition = "any renal diseases?"
* differential.element[39].type.code = #boolean
* differential.element[39].min = 0
* differential.element[39].max = "1"

* differential.element[40].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.neuro"
* differential.element[40].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.neuro"
* differential.element[40].short = "Chronic neurological or neuromuscular disease"
* differential.element[40].definition = "Chronic neurological or neuromuscular disease"
* differential.element[40].type.code = #boolean
* differential.element[40].min = 0
* differential.element[40].max = "1"

* differential.element[41].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.malignancy"
* differential.element[41].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.malignancy"
* differential.element[41].short = "Malignancy"
* differential.element[41].definition = "Malignancy"
* differential.element[41].type.code = #boolean
* differential.element[41].min = 0
* differential.element[41].max = "1"

* differential.element[42].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.lung"
* differential.element[42].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.lung"
* differential.element[42].short = "Chronic lung disease?"
* differential.element[42].definition = "Chronic lung disease?"
* differential.element[42].type.code = #boolean
* differential.element[42].min = 0
* differential.element[42].max = "1"

* differential.element[43].id = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.other"
* differential.element[43].path = "WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.other"
* differential.element[43].short = "Other, specify?"
* differential.element[43].definition = "Describe other underlying conditions and comorbidity"
* differential.element[43].type.code = #string
* differential.element[43].min = 0
* differential.element[43].max = "1"

* differential.element[44].id = "WhoCrSurveillanceDataDictionary.exposure"
* differential.element[44].path = "WhoCrSurveillanceDataDictionary.exposure"
* differential.element[44].short = "Potential exposure"
* differential.element[44].definition = "Potential exposure"
* differential.element[44].type.code = #BackboneElement
* differential.element[44].min = 0
* differential.element[44].max = "1"

* differential.element[45].id = "WhoCrSurveillanceDataDictionary.exposure.patientInfo"
* differential.element[45].path = "WhoCrSurveillanceDataDictionary.exposure.patientInfo"
* differential.element[45].short = "Details of patient related to exposure"
* differential.element[45].definition = "Details of patient related to exposure"
* differential.element[45].type.code = #BackboneElement
* differential.element[45].min = 0
* differential.element[45].max = "1"

* differential.element[46].id = "WhoCrSurveillanceDataDictionary.exposure.patientInfo.hcw"
* differential.element[46].path = "WhoCrSurveillanceDataDictionary.exposure.patientInfo.hcw"
* differential.element[46].short = "Exposure via patient healthcare employment details"
* differential.element[46].definition = "Exposure via patient healthcare employment details"
* differential.element[46].type.code = #BackboneElement
* differential.element[46].min = 0
* differential.element[46].max = "1"

* differential.element[47].id = "WhoCrSurveillanceDataDictionary.exposure.patientInfo.hcw.isHealthcareWorker"
* differential.element[47].path = "WhoCrSurveillanceDataDictionary.exposure.patientInfo.hcw.isHealthcareWorker"
* differential.element[47].short = "Health care worker"
* differential.element[47].definition = "Is the patient working in a health care setting?"
* differential.element[47].type.code = #Coding
* differential.element[47].min = 0
* differential.element[47].max = "1"
* differential.element[47].binding.valueSet = Canonical(WhoCrValueSetYesNoUnk)
* differential.element[47].binding.strength = #required

* differential.element[48].id = "WhoCrSurveillanceDataDictionary.exposure.patientInfo.hcw.workCountry"
* differential.element[48].path = "WhoCrSurveillanceDataDictionary.exposure.patientInfo.hcw.workCountry"
* differential.element[48].short = "Healthcare worker country"
* differential.element[48].definition = "If case is a healthcare worker, in which country do they work?"
* differential.element[48].type.code = #CodeableConcept
* differential.element[48].min = 0
* differential.element[48].max = "1"

* differential.element[49].id = "WhoCrSurveillanceDataDictionary.exposure.patientInfo.hcw.workCity"
* differential.element[49].path = "WhoCrSurveillanceDataDictionary.exposure.patientInfo.hcw.workCity"
* differential.element[49].short = "Healthcare worker city"
* differential.element[49].definition = "If case is a healthcare worker, in which city do they work?"
* differential.element[49].type.code = #string
* differential.element[49].min = 0
* differential.element[49].max = "1"

* differential.element[50].id = "WhoCrSurveillanceDataDictionary.exposure.patientInfo.hcw.facilityName"
* differential.element[50].path = "WhoCrSurveillanceDataDictionary.exposure.patientInfo.hcw.facilityName"
* differential.element[50].short = "Healthcare worker facility name"
* differential.element[50].definition = "If case is a healthcare worker, what is the name of the facility in which they work?"
* differential.element[50].type.code = #string
* differential.element[50].min = 0
* differential.element[50].max = "1"

* differential.element[51].id = "WhoCrSurveillanceDataDictionary.exposure.travel"
* differential.element[51].path = "WhoCrSurveillanceDataDictionary.exposure.travel"
* differential.element[51].short = "Exposure via patient travel details"
* differential.element[51].definition = "Exposure via travel details"
* differential.element[51].type.code = #BackboneElement
* differential.element[51].min = 0
* differential.element[51].max = "1"

* differential.element[52].id = "WhoCrSurveillanceDataDictionary.exposure.travel.hasTravelled"
* differential.element[52].path = "WhoCrSurveillanceDataDictionary.exposure.travel.hasTravelled"
* differential.element[52].short = "Has the patient travelled in the 14 days prior to symptom onset?"
* differential.element[52].definition = "Has the patient travelled in the 14 days prior to symptom onset?"
* differential.element[52].type.code = #Coding
* differential.element[52].min = 0
* differential.element[52].max = "1"
* differential.element[52].binding.valueSet = Canonical(WhoCrValueSetYesNoUnk)
* differential.element[52].binding.strength = #required

* differential.element[53].id = "WhoCrSurveillanceDataDictionary.exposure.travel.location"
* differential.element[53].path = "WhoCrSurveillanceDataDictionary.exposure.travel.location"
* differential.element[53].short = "Locations of travel"
* differential.element[53].definition = "Locations of travel in the 14 days prior to symptom onset"
* differential.element[53].type.code = #BackboneElement
* differential.element[53].min = 0
* differential.element[53].max = "*"

* differential.element[54].id = "WhoCrSurveillanceDataDictionary.exposure.travel.location.country"
* differential.element[54].path = "WhoCrSurveillanceDataDictionary.exposure.travel.location.country"
* differential.element[54].short = "Country travelled to"
* differential.element[54].definition = "Specify country of travel for this location"
* differential.element[54].type.code = #CodeableConcept
* differential.element[54].min = 0
* differential.element[54].max = "1"

* differential.element[55].id = "WhoCrSurveillanceDataDictionary.exposure.travel.location.city"
* differential.element[55].path = "WhoCrSurveillanceDataDictionary.exposure.travel.location.city"
* differential.element[55].short = "City travelled to"
* differential.element[55].definition = "Specify city travelled to for this location"
* differential.element[55].type.code = #string
* differential.element[55].min = 0
* differential.element[55].max = "1"

* differential.element[56].id = "WhoCrSurveillanceDataDictionary.exposure.travel.location.departureDate"
* differential.element[56].path = "WhoCrSurveillanceDataDictionary.exposure.travel.location.departureDate"
* differential.element[56].short = "Date of departure"
* differential.element[56].definition = "Specify date of departure from this location"
* differential.element[56].type.code = #date
* differential.element[56].min = 0
* differential.element[56].max = "1"

* differential.element[57].id = "WhoCrSurveillanceDataDictionary.exposure.visitedHealthcare"
* differential.element[57].path = "WhoCrSurveillanceDataDictionary.exposure.visitedHealthcare"
* differential.element[57].short = "Has the patient visited any health care facilities in the 14 days prior to symptom onset"
* differential.element[57].definition = "Has the patient visited any health care facilities in the 14 days prior to symptom onset"
* differential.element[57].type.code = #Coding
* differential.element[57].min = 0
* differential.element[57].max = "1"
* differential.element[57].binding.valueSet = Canonical(WhoCrValueSetYesNoUnk)
* differential.element[57].binding.strength = #required

* differential.element[58].id = "WhoCrSurveillanceDataDictionary.exposure.caseContact"
* differential.element[58].path = "WhoCrSurveillanceDataDictionary.exposure.caseContact"
* differential.element[58].short = "Has the patient had contact with a confirmed case?"
* differential.element[58].definition = "Has the patient had contact with a confirmed case in the 14 days prior to disease onset?"
* differential.element[58].type.code = #Coding
* differential.element[58].min = 0
* differential.element[58].max = "1"
* differential.element[58].binding.valueSet = Canonical(WhoCrValueSetYesNoUnk)
* differential.element[58].binding.strength = #required

* differential.element[59].id = "WhoCrSurveillanceDataDictionary.exposure.contactSetting"
* differential.element[59].path = "WhoCrSurveillanceDataDictionary.exposure.contactSetting"
* differential.element[59].short = "Explain contact setting"
* differential.element[59].definition = "If the patient has had contact with a confirmed case in the 14 days prior to symptom onset, explain contact setting"
* differential.element[59].type.code = #string
* differential.element[59].min = 0
* differential.element[59].max = "1"

* differential.element[60].id = "WhoCrSurveillanceDataDictionary.exposure.contact"
* differential.element[60].path = "WhoCrSurveillanceDataDictionary.exposure.contact"
* differential.element[60].short = "Confirmed case contact"
* differential.element[60].definition = "Confirmed case contact"
* differential.element[60].type.code = #BackboneElement
* differential.element[60].min = 0
* differential.element[60].max = "*"

* differential.element[61].id = "WhoCrSurveillanceDataDictionary.exposure.contact.identifier"
* differential.element[61].path = "WhoCrSurveillanceDataDictionary.exposure.contact.identifier"
* differential.element[61].short = "ID number of confirmed case"
* differential.element[61].definition = "Unique identifier of confirmed case with whom the patient had contact"
* differential.element[61].type.code = #Identifier
* differential.element[61].min = 0
* differential.element[61].max = "1"

* differential.element[62].id = "WhoCrSurveillanceDataDictionary.exposure.contact.exposurePeriod"
* differential.element[62].path = "WhoCrSurveillanceDataDictionary.exposure.contact.exposurePeriod"
* differential.element[62].short = "Date range from first exposure to last exposure for confirmed case"
* differential.element[62].definition = "Date range from first exposure to last exposure for confirmed case"
* differential.element[62].type.code = #Period
* differential.element[62].min = 0
* differential.element[62].max = "1"

* differential.element[63].id = "WhoCrSurveillanceDataDictionary.exposure.contactCountry"
* differential.element[63].path = "WhoCrSurveillanceDataDictionary.exposure.contactCountry"
* differential.element[63].short = "Likely country for exposure to case?"
* differential.element[63].definition = "Specify the location of possible exposure to a case"
* differential.element[63].type.code = #CodeableConcept
* differential.element[63].min = 0
* differential.element[63].max = "1"

* differential.element[64].id = "WhoCrSurveillanceDataDictionary.outcome.submissionDate"
* differential.element[64].path = "WhoCrSurveillanceDataDictionary.outcome.submissionDate"
* differential.element[64].short = "Date of outcome submission"
* differential.element[64].definition = "Date of outcome submission"
* differential.element[64].type.code = #date
* differential.element[64].min = 0
* differential.element[64].max = "1"

* differential.element[65].id = "WhoCrSurveillanceDataDictionary.outcome.symptomatic"
* differential.element[65].path = "WhoCrSurveillanceDataDictionary.outcome.symptomatic"
* differential.element[65].short = "Asymptomatic case developed symptoms"
* differential.element[65].definition = "If case was asymptomatic at time of specimen collection resulting in first laboratory confirmation, did the case develop any symptoms or signs at any time prior to discharge or death"
* differential.element[65].type.code = #Coding
* differential.element[65].min = 0
* differential.element[65].max = "1"
* differential.element[65].binding.valueSet = Canonical(WhoCrValueSetYesNoUnk)
* differential.element[65].binding.strength = #required

* differential.element[66].id = "WhoCrSurveillanceDataDictionary.outcome.symptomaticDate"
* differential.element[66].path = "WhoCrSurveillanceDataDictionary.outcome.symptomaticDate"
* differential.element[66].short = "Date case developed symptoms"
* differential.element[66].definition = "If case was asymptomatic and developed symptoms, what is the date of onset for symptoms/signs of illness"
* differential.element[66].type.code = #date
* differential.element[66].min = 0
* differential.element[66].max = "1"

* differential.element[67].id = "WhoCrSurveillanceDataDictionary.outcome.patientCourse.wasAdmitted"
* differential.element[67].path = "WhoCrSurveillanceDataDictionary.outcome.patientCourse.wasAdmitted"
* differential.element[67].short = "Patient was admitted to hospital"
* differential.element[67].definition = "Patient was first admitted to hospital (outcome)"
* differential.element[67].type.code = #Coding
* differential.element[67].min = 0
* differential.element[67].max = "1"
* differential.element[67].binding.valueSet = Canonical(WhoCrValueSetYesNoUnk)
* differential.element[67].binding.strength = #required

* differential.element[68].id = "WhoCrSurveillanceDataDictionary.outcome.patientCourse.presHCF"
* differential.element[68].path = "WhoCrSurveillanceDataDictionary.outcome.patientCourse.presHCF"
* differential.element[68].short = "Date patient admitted to hospital"
* differential.element[68].definition = "Date patient was first admitted to hospital (outcome)"
* differential.element[68].type.code = #date
* differential.element[68].min = 0
* differential.element[68].max = "1"

* differential.element[69].id = "WhoCrSurveillanceDataDictionary.outcome.patientCourse.receivedIcuCare"
* differential.element[69].path = "WhoCrSurveillanceDataDictionary.outcome.patientCourse.receivedIcuCare"
* differential.element[69].short = "Did the patient receive care in an intensive care unit (ICU)? (outcome)"
* differential.element[69].type.code = #Coding
* differential.element[69].min = 0
* differential.element[69].max = "1"
* differential.element[69].binding.valueSet = Canonical(WhoCrValueSetYesNoUnk)
* differential.element[69].binding.strength = #required

* differential.element[70].id = "WhoCrSurveillanceDataDictionary.outcome.patientCourse.ventilated"
* differential.element[70].path = "WhoCrSurveillanceDataDictionary.outcome.patientCourse.ventilated"
* differential.element[70].short = "Was the patient ventilated?"
* differential.element[70].definition = "Was the patient ever ventilated for this episode? (outcome)"
* differential.element[70].type.code = #Coding
* differential.element[70].min = 0
* differential.element[70].max = "1"
* differential.element[70].binding.valueSet = Canonical(WhoCrValueSetYesNoUnk)
* differential.element[70].binding.strength = #required

* differential.element[71].id = "WhoCrSurveillanceDataDictionary.outcome.patientCourse.receivedEcmo"
* differential.element[71].path = "WhoCrSurveillanceDataDictionary.outcome.patientCourse.receivedEcmo"
* differential.element[71].short = "Did the patient receive ECMO?"
* differential.element[71].definition = "Did the patient receive extracorporeal membrane oxygenation (ECMO)? (outcome)"
* differential.element[71].type.code = #Coding
* differential.element[71].min = 0
* differential.element[71].max = "1"
* differential.element[71].binding.valueSet = Canonical(WhoCrValueSetYesNoUnk)
* differential.element[71].binding.strength = #required

* differential.element[72].id = "WhoCrSurveillanceDataDictionary.outcome.patientCourse.status"
* differential.element[72].path = "WhoCrSurveillanceDataDictionary.outcome.patientCourse.status"
* differential.element[72].short = "Patient status (outcome)"
* differential.element[72].definition = "Patient status (outcome)"
* differential.element[72].type.code = #Coding
* differential.element[72].min = 0
* differential.element[72].max = "1"
* differential.element[72].binding.valueSet = Canonical(WhoCrValueSetPatientOutcome)
* differential.element[72].binding.strength = #required

* differential.element[73].id = "WhoCrSurveillanceDataDictionary.outcome.patientCourse.statusOther"
* differential.element[73].path = "WhoCrSurveillanceDataDictionary.outcome.patientCourse.statusOther"
* differential.element[73].short = "Other patient status (outcome)"
* differential.element[73].definition = "Other patient status (outcome)"
* differential.element[73].type.code = #string
* differential.element[73].min = 0
* differential.element[73].max = "1"

* differential.element[74].id = "WhoCrSurveillanceDataDictionary.outcome.outcomeDate"
* differential.element[74].path = "WhoCrSurveillanceDataDictionary.outcome.outcomeDate"
* differential.element[74].short = "Date of patient release or date of death"
* differential.element[74].definition = "Date of Release from isolation/hospital or Date of Death"
* differential.element[74].type.code = #date
* differential.element[74].min = 0
* differential.element[74].max = "1"

* differential.element[75].id = "WhoCrSurveillanceDataDictionary.outcome.labDate"
* differential.element[75].path = "WhoCrSurveillanceDataDictionary.outcome.labDate"
* differential.element[75].short = "If released, date of last laboratory test"
* differential.element[75].definition = "If released from hospital /isolation, date of last laboratory test"
* differential.element[75].type.code = #date
* differential.element[75].min = 0
* differential.element[75].max = "1"

* differential.element[76].id = "WhoCrSurveillanceDataDictionary.outcome.labResult"
* differential.element[76].path = "WhoCrSurveillanceDataDictionary.outcome.labResult"
* differential.element[76].short = "laboratory result from last test"
* differential.element[76].definition = "laboratory result from last test"
* differential.element[76].type.code = #Coding
* differential.element[76].min = 0
* differential.element[76].max = "1"
* differential.element[76].binding.valueSet = Canonical(WhoCrValueSetTestResult)
* differential.element[76].binding.strength = #required

* differential.element[77].id = "WhoCrSurveillanceDataDictionary.outcome.contactsFollowed"
* differential.element[77].path = "WhoCrSurveillanceDataDictionary.outcome.contactsFollowed"
* differential.element[77].short = "High risk contacts followed from case"
* differential.element[77].definition = "Total number of high-risk contacts followed for this case"
* differential.element[77].type.code = #positiveInt
* differential.element[77].min = 0
* differential.element[77].max = "1"

* differential.element[78].id = "WhoCrSurveillanceDataDictionary.outcome.contactsFollowedUnknown"
* differential.element[78].path = "WhoCrSurveillanceDataDictionary.outcome.contactsFollowedUnknown"
* differential.element[78].short = "Number of high risk contacts followed unknown"
* differential.element[78].definition = "Number of high risk contacts followed unknown"
* differential.element[78].type.code = #Coding
* differential.element[78].min = 0
* differential.element[78].max = "1"
* differential.element[78].binding.valueSet = Canonical(WhoCrValueSetYesNoUnk)
* differential.element[78].binding.strength = #required



