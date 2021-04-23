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

/**
 * Examples
 */

Instance: WhoCrBundleExample
InstanceOf: Bundle
Usage: #example
Title: "Who Cr Bundle Example"
Description: "Example of a clinical bundle representing a case report"
* type = #document
* entry[+].fullUrl = "http://test.org/fhir/Composition/WhoCrCompositionBasicExample"
* entry[=].resource = WhoCrCompositionBasicExample
* entry[+].fullUrl = "http://test.org/fhir/Encounter/WhoCrEncounterExample"
* entry[=].resource = WhoCrEncounterExample
* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCrObservationAgeExample"
* entry[=].resource = WhoCrObservationAgeExample
* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCrObservationBirthSexExample"
* entry[=].resource = WhoCrObservationBirthSexExample
* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCrObservationLabTestDateExample"
* entry[=].resource = WhoCrObservationLabTestDateExample
* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCrObservationSymptomsExample"
* entry[=].resource = WhoCrObservationSymptomsExample
* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCRObservationOnsetDateExample"
* entry[=].resource = WhoCRObservationOnsetDateExample
* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCrObservationComorbiditiesExample"
* entry[=].resource = WhoCrObservationComorbiditiesExample
* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCrObservationHasTravelledExample"
* entry[=].resource = WhoCrObservationHasTravelledExample

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

* section[+].title = "exposure risk"
* section[=].code = http://test.org/sectionCode#exposureRisk
* section[=].entry[+] = Reference(WhoCrObservationHasTravelledExample)

Instance: WhoCrEncounterExample
InstanceOf: Encounter
Usage: #example
Title: "WHO CR Encounter Example"
Description: "Encounter example"
* location.location = Reference(WhoCrLocationExample)
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#ACUTE

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
