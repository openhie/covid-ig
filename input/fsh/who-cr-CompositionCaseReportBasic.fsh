Profile:    WhoCrCompositionBasic
Parent:     Composition
Id: who-cr-composition-basic
Description:    "WHO Case Reporting Composition - basic support for initial PoC"
Title:      "WHO Case Reporting Composition - Basic"
* type = $LNC#95412-3
* category = $LNC#55751-2
* encounter 1..1
* identifier 1..1

* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.coding.code"
* section ^slicing.rules = #openAtEnd
* section ^slicing.ordered = true
* section ^slicing.description = "Slice of composition.section based on code"

* section contains
    patientInformation 1..1 and
    clinicalStatus 1..1 and
    exposureRisk 1..1

* section[patientInformation].title = "patient information"
* section[patientInformation].code = http://test.org/sectionCode#patientinformation
* section[patientInformation].entry only Reference(WhoCrObservationAge or WhoCrObservationBirthSex)

* section[clinicalStatus].title = "clinical status"
* section[clinicalStatus].code = http://test.org/sectionCode#clinicalStatus
* section[clinicalStatus].entry only Reference(WhoCrObservationLabTestDate or WhoCrObservationSymptoms or WhoCrObservationOnsetDate or WhoCrObservationComorbidities)

* section[exposureRisk].title = "exposure risk"
* section[exposureRisk].code = http://test.org/sectionCode#exposureRisk
* section[exposureRisk].entry only Reference(WhoCrObservationHasTravelled)

Profile: WhoCrEncounter
Parent: Encounter
Id: who-cr-encounter
Title: "WHO CR Encounter"
Description: "WHO Encounter for a case report"
* location 1..1
* reasonCode 1..*
* reasonCode from WhoCrValueSetReasonForCovid19Testing
* period 1..1
* period.start 1..1

Profile: WhoCrEncounterHospitalAdmission
Parent: Encounter
Id: who-cr-encounter-hospital-admission
Title: "WHO CR Encounter Hospital Admission"
Description: "WHO Encounter for hospital admission"
* period 0..1
* period.start 1..1

Profile: WhoCrConditionComorbidity
Parent: Condition
* code 1..1
* code from WhoCrValueSetComorbidity
* subject 0..1

Profile: WhoCrLocation
Parent: Location
Id: who-cr-location
Title: "WHO CR Location"
Description: "WHO Location for case report"
* address 1..1
* address.country 1..1
* address.state 1..1

Profile: WhoCrObservationAge
Parent: Observation
Id: who-cr-observation-age
Title: "WHO CR Observation Age"
Description: "WHO Observation of age for case report"
* code = $LNC#30525-0
* value[x] only Quantity
* valueQuantity.value 1..1
* valueQuantity from WhoCrValueSetAgeUnits

Profile: WhoCrObservationBirthSex
Parent: Observation
Id: who-cr-observation-birth-sex
Title: "WHO CR Observation Birth Sex"
Description: "WHO Observation of birth sex for case report"
* code = $LNC#76689-9
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from WhoCrValueSetSexAtBirth

Profile: WhoCrObservationLabTestDate
Parent: Observation
Id: who-cr-observation-lab-test-date
Title: "WHO CR Observation Lab Test Date"
Description: "WHO Observation for lab test date"
* code = http://test.org/obsCode#lab-test-date // TODO: code not defined in questionnaire either
* value[x] only dateTime
* valueDateTime 1..1

Profile: WhoCrObservationSymptoms
Parent: Observation
Id: who-cr-observation-symptoms
Title: "WHO CR Observation Symptoms"
Description: "WHO Observation if the patient has any symptoms for case report"
* code = http://test.org/obsCode#symptoms // TODO: code not defined in questionnaire either
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from WhoCrValueSetYesNo

Profile: WhoCrObservationOnsetDate
Parent: Observation
Id: who-cr-observation-onset-date
Title: "WHO CR Observation Symptoms Onset Date"
Description: "WHO Observation for date of symptoms onset"
* code = $LNC#65222-2
* value[x] only dateTime
* valueDateTime 1..1

Profile: WhoCrObservationComorbidities
Parent: Observation
Id: who-cr-observation-comorbidities
Title: "WHO CR Observation Co-morbidities"
Description: "WHO Observation if the patient has any co-morbidities for case report"
* code = $LNC#75618-9
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from WhoCrValueSetYesNo

Profile: WhoCrObservationHasTravelled
Parent: Observation
Id: who-cr-observation-has-travelled
Title: "WHO CR Observation Has Travelled"
Description: "WHO Observation if the patient has travelled in the past 14 days prior to symptom onset for case report"
* code = $LNC#96542-6
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from WhoCrValueSetYesNo

Profile: WhoCrObservationTestReason
Parent: Observation
Id: who-cr-observation-test-reason
Title: "WHO CR Observation Test Reason"
Description: "WHO Observation the reason for testing"
* code = $LNC#67098-4
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from WhoCrValueSetReasonForCovid19Testing

Profile: WhoCrObservationReportCountry
Parent: Observation
Id: who-cr-observation-reporting-country
Title: "WHO CR Observation Reporting Country"
Description: "WHO Observation the reporting country"
* code = $LNC#77967-8
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from $vs-iso3166-1-2

Profile: WhoCrObservationHospitalAdmission
Parent: Observation
Id: who-cr-observation-hospital-admission
Title: "WHO CR Observation Hospital Admission"
Description: "WHO Observation if the patient was admitted to the hospital"
* code = $LNC#77974-4
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from WhoCrValueSetYesNoUnk

Profile: WhoCrObservationIntensiveCareReceived
Parent: Observation
Id: who-cr-observation-intensive-care-received
Title: "WHO CR Observation Intensive Care Received"
Description: "WHO Observation if the patient received intensive care in the hospital"
* code = $LNC#95420-6
* value[x] only CodeableConcept
* valueCodeableConcept 0..1
* valueCodeableConcept from WhoCrValueSetYesNoUnk

Profile: WhoCrObservationVentilationReceived
Parent: Observation
Id: who-cr-observation-ventilation-received
Title: "WHO CR Observation Ventilation Received"
Description: "WHO Observation if the patient received ventilation in the hospital"
* code = $LNC#96539-2
* value[x] only CodeableConcept
* valueCodeableConcept 0..1
* valueCodeableConcept from WhoCrValueSetYesNoUnk

Profile: WhoCrObservationECMO
Parent: Observation
Id: who-cr-observation-extracorporeal-membrane-oxygenation
Title: "WHO CR Observation Extracorporeal Membrane Oxygenation Received"
Description: "WHO Observation if the patient received extracorporeal membrane oxygenation in the hospital"
* code = $LNC#96540-0
* value[x] only CodeableConcept
* valueCodeableConcept 0..1
* valueCodeableConcept from WhoCrValueSetYesNoUnk

Profile: WhoCrObservationCaseIsolation
Parent: Observation
Id: who-cr-observation-case-isolated
Title: "WHO CR Observation Case Isolated"
Description: "WHO Observation if the patient is in isolation"
* code = $LNC#96548-3
* value[x] only CodeableConcept
* valueCodeableConcept 0..1
* valueCodeableConcept from WhoCrValueSetYesNoUnk
* valueDateTime 0..1

Profile: WhoCrObservationHealthCareWorker
Parent: Observation
Id: who-cr-observation-health-care-worker
Title: "WHO CR Observation Health Care Worker"
Description: "WHO Observation if the patient is a health care worker"
* code = $LNC#95418-0
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from WhoCrValueSetYesNoUnk

Profile: WhoCrObservationTravelCountry
Parent: Observation
Id: who-cr-observation-travel-country
Title: "WHO CR Observation Travel Country"
Description: "WHO Observation country traveled to by patient"
* code = $LNC#94651-7
* value[x] only CodeableConcept
* valueCodeableConcept 0..1
* valueCodeableConcept from $vs-iso3166-1-2
* effectiveDateTime 0..1
* component 0..1
* component.code = $LNC#91560-3
* component.valueString 0..1
* component.valueString from WhoCrValueSetAdmin1

Profile: WhoCrObservationTravelCity
Parent: Observation
Id: who-cr-observation-travel-city
Title: "WHO CR Observation Travel City"
Description: "WHO Observation city traveled to by patient"
* code = $LNC#94653-3
* value[x] only string
* valueString 1..1
* valueString from WhoCrValueSetAdmin1

Profile: WhoCrObservationTravelDate
Parent: Observation
Id: who-cr-observation-travel-date
Title: "WHO CR Observation Travel Date"
Description: "WHO Observation date on which the patient departed from the country"
* code = $LNC#91560-3
* effective[x] only dateTime
* effectiveDateTime 1..1

Profile: WhoCrObservationVisitedHealthCare
Parent: Observation
Id: who-cr-observation-visited-health-care
Title: "WHO CR Observation Visited Health Care"
Description: "WHO Observation if the patient has visited health care in the past 14 days prior to symptom onset for case report"
* code = $LNC#96543-4
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from WhoCrValueSetYesNo

Profile: WhoCrObservationContactCase
Parent: Observation
Id: who-cr-observation-contact-case
Title: "WHO CR Observation Contact Case"
Description: "WHO Observation if the patient has had contact with confirmed case in the past 14 days prior to symptom onset for case report"
* code = $LNC#96544-2
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from WhoCrValueSetYesNo

Profile: WhoCrObservationContactCaseSetting
Parent: Observation
Id: who-cr-observation-contact-case-setting
Title: "WHO CR Observation Contact Case Setting"
Description: "WHO Observation setting for contact with confirmed case in the past 14 days prior to symptom onset for case report"
* code = $LNC#81267-7
* value[x] only string
* valueString 1..1

Profile: WhoCrObservationContactCaseID
Parent: Observation
Id: who-cr-observation-contact-case-id
Title: "WHO CR Observation Contact Case Id"
Description: "WHO Observation id of the confirmed case contacted"
* code = $LNC#94650-9
* value[x] only string
* valueString 1..1

Profile: WhoCrObservationContactCaseFirstDate
Parent: Observation
Id: who-cr-observation-contact-case-first-date
Title: "WHO CR Observation Contact Case First Date"
Description: "WHO Observation first date patient came into contact with confirmed case"
* code = $LNC#96545-9
* value[x] only dateTime
* valueDateTime 1..1

Profile: WhoCrObservationContactCaseLastDate
Parent: Observation
Id: who-cr-observation-contact-case-last-date
Title: "WHO CR Observation Contact Case Last Date"
Description: "WHO Observation last date patient came into contact with confirmed case"
* code = $LNC#95386-9
* value[x] only dateTime
* valueDateTime 1..1

Profile: WhoCrObservationContactCaseLocation
Parent: Observation
Id: who-cr-observation-contact-case-location
Title: "WHO CR Observation Contact Case Location"
Description: "WHO Observation likely country for exposure to case"
* code = $LNC#77984-3
* value[x] only string
* valueString 1..1
* valueString from $vs-iso3166-1-2

/**
 * Examples
 */

Instance: WhoCrBundleExample
InstanceOf: Bundle
Usage: #example
Title: "Who Cr Bundle Example"
Description: "Example of a clinical bundle representing a case report"
* type = #transaction
* entry[+].fullUrl = "http://test.org/fhir/Composition/WhoCrCompositionBasicExample"
* entry[=].resource = WhoCrCompositionBasicExample
* entry[=].request.method = #POST
* entry[=].request.url = "Composition"
* entry[+].fullUrl = "http://test.org/fhir/Encounter/WhoCrEncounterExample"
* entry[=].resource = WhoCrEncounterExample
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"
* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCrObservationAgeExample"
* entry[=].resource = WhoCrObservationAgeExample
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCrObservationBirthSexExample"
* entry[=].resource = WhoCrObservationBirthSexExample
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCrObservationLabTestDateExample"
* entry[=].resource = WhoCrObservationLabTestDateExample
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCrObservationSymptomsExample"
* entry[=].resource = WhoCrObservationSymptomsExample
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCRObservationOnsetDateExample"
* entry[=].resource = WhoCRObservationOnsetDateExample
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCrObservationComorbiditiesExample"
* entry[=].resource = WhoCrObservationComorbiditiesExample
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCrObservationHasTravelledExample"
* entry[=].resource = WhoCrObservationHasTravelledExample
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCrObservationTestReasonExample"
* entry[=].resource = WhoCrObservationTestReasonExample
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCrObservationReportCountryExample"
* entry[=].resource = WhoCrObservationReportCountryExample
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCrObservationHospitalAdmissionExample"
* entry[=].resource = WhoCrObservationHospitalAdmissionExample
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCrObservationIntensiveCareReceivedExample"
* entry[=].resource = WhoCrObservationIntensiveCareReceivedExample
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCrObservationVentilationReceivedExample"
* entry[=].resource = WhoCrObservationVentilationReceivedExample
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCrObservationECMOExample"
* entry[=].resource = WhoCrObservationECMOExample
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCrObservationCaseIsolationExample"
* entry[=].resource = WhoCrObservationCaseIsolationExample
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCrObservationHealthCareWorkerExample"
* entry[=].resource = WhoCrObservationHealthCareWorkerExample
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCrObservationTravelCountryExample"
* entry[=].resource = WhoCrObservationTravelCountryExample
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCrObservationVisitedHealthCareExample"
* entry[=].resource = WhoCrObservationVisitedHealthCareExample
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCrObservationContactCaseExample"
* entry[=].resource = WhoCrObservationContactCaseExample
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCrObservationContactCaseSettingExample"
* entry[=].resource = WhoCrObservationContactCaseSettingExample
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCrObservationContactCaseIDExample"
* entry[=].resource = WhoCrObservationContactCaseIDExample
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCrObservationContactCaseLastDateExample"
* entry[=].resource = WhoCrObservationContactCaseLastDateExample
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCrObservationContactCaseFirstDateExample"
* entry[=].resource = WhoCrObservationContactCaseFirstDateExample
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCrObservationContactCaseLocationExample"
* entry[=].resource = WhoCrObservationContactCaseLocationExample
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "http://test.org/fhir/Encounter/WhoCrEncounterHospitalAdmissionExample"
* entry[=].resource = WhoCrEncounterHospitalAdmissionExample
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"
* entry[+].fullUrl = "http://test.org/fhir/Condition/WhoCrConditionComorbidityExample"
* entry[=].resource = WhoCrConditionComorbidityExample
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"

Instance: WhoCrCompositionBasicExample
InstanceOf: WhoCrCompositionBasic
Usage: #example
Title: "Who Cr Composition Basic Example"
Description: "Basic Composition example"
* status = #final
* identifier.system = "http://test.org/identifier/who-covid-19-case-report"
* identifier.value = "1111"
* encounter = Reference(WhoCrEncounterExample)
* date = "2021-01-18"
* author = Reference(WhoCrPractitionerExample)
* title = "WHO COVID-19 Case Report"

* section[+].title = "reporting country"
* section[=].code = http://test.org/sectionCode#reportingcountry
* section[=].entry[+] = Reference(WhoCrObservationReportCountryExample)

* section[+].title = "patient information"
* section[=].code = http://test.org/sectionCode#patientinformation
* section[=].entry[+] = Reference(WhoCrObservationAgeExample)
* section[=].entry[+] = Reference(WhoCrObservationBirthSexExample)

* section[+].title = "clinical status"
* section[=].code = http://test.org/sectionCode#clinicalStatus
* section[=].entry[+] = Reference(WhoCrObservationLabTestDateExample)
* section[=].entry[+] = Reference(WhoCrObservationSymptomsExample)
* section[=].entry[+] = Reference(WhoCRObservationOnsetDateExample)
* section[=].entry[+] = Reference(WhoCrObservationComorbiditiesExample)
* section[=].entry[+] = Reference(WhoCrObservationTestReasonExample)
* section[=].entry[+] = Reference(WhoCrObservationHospitalAdmissionExample)
* section[=].entry[+] = Reference(WhoCrObservationIntensiveCareReceivedExample)
* section[=].entry[+] = Reference(WhoCrObservationVentilationReceivedExample)
* section[=].entry[+] = Reference(WhoCrObservationECMOExample)
* section[=].entry[+] = Reference(WhoCrObservationCaseIsolationExample)
* section[=].entry[+] = Reference(WhoCrObservationHealthCareWorkerExample)
* section[=].entry[+] = Reference(WhoCrEncounterHospitalAdmissionExample)
* section[=].entry[+] = Reference(WhoCrConditionComorbidityExample)

* section[+].title = "exposure risk"
* section[=].code = http://test.org/sectionCode#exposureRisk
* section[=].entry[+] = Reference(WhoCrObservationHasTravelledExample)
* section[=].entry[+] = Reference(WhoCrObservationTravelCountryExample)
* section[=].entry[+] = Reference(WhoCrObservationVisitedHealthCareExample)
* section[=].entry[+] = Reference(WhoCrObservationContactCaseExample)
* section[=].entry[+] = Reference(WhoCrObservationContactCaseSettingExample)
* section[=].entry[+] = Reference(WhoCrObservationContactCaseIDExample)
* section[=].entry[+] = Reference(WhoCrObservationContactCaseLastDateExample)
* section[=].entry[+] = Reference(WhoCrObservationContactCaseFirstDateExample)
* section[=].entry[+] = Reference(WhoCrObservationContactCaseLocationExample)

Instance: WhoCrEncounterExample
InstanceOf: Encounter
Usage: #example
Title: "WHO CR Encounter Example"
Description: "Encounter example"
* location.location = Reference(WhoCrLocationExample)
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#ACUTE
* period.start = "2021-01-15"

Instance: WhoCrLocationExample
InstanceOf: Location
Usage: #example
Title: "Who Cr Location Example"
Description: "Location example"
* address.country = "ZA"
* address.state = "KZN"

Instance: WhoCrPractitionerExample
InstanceOf: Practitioner
Usage: #example
Title: "Who Cr Practitioner Example"
Description: "Practitioner example"
* name[0].given[0] = "Homer"
* name[1].family = "Simpson"

Instance: WhoCrObservationAgeExample
InstanceOf: WhoCrObservationAge
Usage: #example
Title: "Who Cr Observation Age Example"
Description: "Observation Age Example"
* status = #final
* valueQuantity.value = 35

Instance: WhoCrObservationBirthSexExample
InstanceOf: WhoCrObservationBirthSex
Usage: #example
Title: "Who Cr Observation Birth Sex Example"
Description: "Observation Birth Sex Example"
* status = #final
* valueCodeableConcept = $cs-gender#male

Instance: WhoCrObservationLabTestDateExample
InstanceOf: WhoCrObservationLabTestDate
Usage: #example
Title: "Who Cr Observation Lab Test Date Example"
Description: "Lab Test Date Example"
* status = #final
* valueDateTime = "2021-01-18"

Instance: WhoCrObservationSymptomsExample
InstanceOf: WhoCrObservationSymptoms
Usage: #example
Title: "Who Cr Observation Symptoms Example"
Description: "Observation Symptoms Example"
* status = #final
* valueCodeableConcept = $cs-v2-0136#Y

Instance: WhoCRObservationOnsetDateExample
InstanceOf: WhoCrObservationOnsetDate
Usage: #example
Title: "Who CR Observation Onset DateExample"
Description: "Observation Onset DateExample"
* status = #final
* valueDateTime = "2021-01-15"

Instance: WhoCrObservationComorbiditiesExample
InstanceOf: WhoCrObservationComorbidities
Usage: #example
Title: "Who Cr Observation ComorbiditiesExample"
Description: "Observation ComorbiditiesExample"
* status = #final
* valueCodeableConcept = $cs-v2-0136#Y

Instance: WhoCrObservationHasTravelledExample
InstanceOf: WhoCrObservationHasTravelled
Usage: #example
Title: "Who Cr Observation Has Travelled Example"
Description: "Observation Has Travelled Example"
* status = #final
* valueCodeableConcept = $cs-v2-0136#N

Instance: WhoCrObservationTestReasonExample
InstanceOf: WhoCrObservationTestReason
Usage: #example
Title: "Who Cr Observation Test Reason Example"
Description: "Observation Test Reason Example"
* status = #final
* valueCodeableConcept = WhoCrCodeSystemReasonForTesting#CASE_CONTACT

Instance: WhoCrObservationReportCountryExample
InstanceOf: WhoCrObservationReportCountry
Usage: #example
Title: "Who Cr Observation Report Country Example"
Description: "Observation Report Country Example"
* status = #final
* valueCodeableConcept = $vs-iso3166-1-2#ZA

Instance: WhoCrObservationHospitalAdmissionExample
InstanceOf: WhoCrObservationHospitalAdmission
Usage: #example
Title: "Who Cr Observation Hospital Admission Example"
Description: "Observation Hospital Admission Example"
* status = #final
* valueCodeableConcept = $cs-v2-0136#Y

Instance: WhoCrObservationIntensiveCareReceivedExample
InstanceOf: WhoCrObservationIntensiveCareReceived
Usage: #example
Title: "Who Cr Observation Intensive Care Received Example"
Description: "Observation Intensive Received Example"
* status = #final
* valueCodeableConcept = $cs-v2-0136#Y

Instance: WhoCrObservationVentilationReceivedExample
InstanceOf: WhoCrObservationVentilationReceived
Usage: #example
Title: "Who Cr Observation Ventilation Received Example"
Description: "Observation Ventilation Received Example"
* status = #final
* valueCodeableConcept = $cs-v2-0136#Y

Instance: WhoCrObservationECMOExample
InstanceOf: WhoCrObservationECMO
Usage: #example
Title: "Who Cr Observation ECMO Example"
Description: "Observation ECMO Example"
* status = #final
* valueCodeableConcept = $cs-v2-0136#Y

Instance: WhoCrObservationCaseIsolationExample
InstanceOf: WhoCrObservationCaseIsolation
Usage: #example
Title: "Who Cr Observation CaseIsolated Example"
Description: "Observation CaseIsolated Example"
* status = #final
* valueCodeableConcept = $cs-v2-0136#Y
* valueDateTime = "2021-01-29"

Instance: WhoCrObservationHealthCareWorkerExample
InstanceOf: WhoCrObservationHealthCareWorker
Usage: #example
Title: "Who Cr Observation HealthCareWorker Example"
Description: "Observation HealthCareWorker Example"
* status = #final
* valueCodeableConcept = $cs-v2-0136#Y

Instance: WhoCrObservationTravelCountryExample
InstanceOf: WhoCrObservationTravelCountry
Usage: #example
Title: "Who Cr Observation Travel Country Example"
Description: "Observation Travel Country Example"
* status = #final
* valueCodeableConcept = $vs-iso3166-1-2#ZA
* effectiveDateTime = "2021-01-19"
* component.valueString = "Harare"

Instance: WhoCrObservationVisitedHealthCareExample
InstanceOf: WhoCrObservationVisitedHealthCare
Usage: #example
Title: "Who Cr Observation VisitedHealthCare Example"
Description: "Observation VisitedHealthCare Example"
* status = #final
* valueCodeableConcept = $cs-v2-0136#Y

Instance: WhoCrObservationContactCaseExample
InstanceOf: WhoCrObservationContactCase
Usage: #example
Title: "Who Cr Observation ContactCase Example"
Description: "Observation ContactCase Example"
* status = #final
* valueCodeableConcept = $cs-v2-0136#Y

Instance: WhoCrObservationContactCaseSettingExample
InstanceOf: WhoCrObservationContactCaseSetting
Usage: #example
Title: "Who Cr Observation Contact Case Setting Example"
Description: "Observation Contact Case Setting Example"
* status = #final
* valueString = "Home"

Instance: WhoCrObservationContactCaseIDExample
InstanceOf: WhoCrObservationContactCaseID
Usage: #example
Title: "Who Cr Observation Contact Case ID Example"
Description: "Observation Contact Case ID Example"
* status = #final
* valueString = "12345678"

Instance: WhoCrObservationContactCaseLastDateExample
InstanceOf: WhoCrObservationContactCaseLastDate
Usage: #example
Title: "Who Cr Observation Contact Case Last Date Example"
Description: "Contact Case Last Date Example"
* status = #final
* valueDateTime = "2021-01-19"

Instance: WhoCrObservationContactCaseFirstDateExample
InstanceOf: WhoCrObservationContactCaseFirstDate
Usage: #example
Title: "Who Cr Observation Contact Case First Date Example"
Description: "Contact Case First Date Example"
* status = #final
* valueDateTime = "2021-01-20"

Instance: WhoCrObservationContactCaseLocationExample
InstanceOf: WhoCrObservationContactCaseLocation
Usage: #example
Title: "Who Cr Observation Contact Case Location Example"
Description: "Observation Contact Case Location Example"
* status = #final
* valueString = "ZW"

Instance: WhoCrEncounterHospitalAdmissionExample
InstanceOf: WhoCrEncounterHospitalAdmission
Usage: #example
Title: "Who Cr Encounter Hospital Admission Example"
Description: "Hospital Admission Encounter Example"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#ACUTE
* period.start = "2021-01-19"

Instance: WhoCrConditionComorbidityExample
InstanceOf: WhoCrConditionComorbidity
Usage: #example
Title: "Who Cr Condition Comorbidity Example"
Description: "Condition Comorbidity Example"
* code = WhoCrCodeSystemComorbidity#PREGNANCY
* subject = Reference("Patient/12333")
