Profile:    WhoCoComposition
Parent:     Composition
Id: who-c0-composition
Description:    "WHO Case Outcome Composition"
Title:      "WHO Case Outcome Composition"
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
    clinicalStatus 1..1 and
    exposureRisk 1..1

* section[clinicalStatus].title = "clinical status"
* section[clinicalStatus].code = http://test.org/sectionCode#clinicalStatus

* section[exposureRisk].title = "exposure risk"
* section[exposureRisk].code = http://test.org/sectionCode#exposureRisk
* section[exposureRisk].entry only Reference(WhoCoObservationOutcomeContactsFollowed or WhoCoObservationOutcomeContactsFollowedUnknown)

Instance: WhoCoCompositionExample
InstanceOf: WhoCoComposition
Usage: #example
Title: "Who Co Composition Example"
Description: "Composition example"
* status = #final
* identifier.system = "http://test.org/identifier/who-covid-19-case-outcome"
* identifier.value = "1111"
* encounter = Reference(WhoCoEncounterExample)
* date = "2021-05-13"
* author = Reference(WhoCrPractitionerExample)
* title = "WHO COVID-19 Case Outcome"

* section[+].title = "clinical status"
* section[=].code = http://test.org/sectionCode#clinicalStatus
* section[=].entry[+] = Reference(WhoCoObservationOutcomeAsympExample)
* section[=].entry[+] = Reference(WhoCoObservationPatcourseAdmitExample)
* section[=].entry[+] = Reference(WhoCoObservationPatcourseAdmitDateExample)
* section[=].entry[+] = Reference(WhoCoObservationOutcomePatcourseIcuExample)
* section[=].entry[+] = Reference(WhoCoObservationOutcomePatcourseVentExample)
* section[=].entry[+] = Reference(WhoCoObservationOutcomePatcourseEcmoExample)
* section[=].entry[+] = Reference(WhoCoObservationOutcomePatcourseStatusExample)
* section[=].entry[+] = Reference(WhoCoObservationOutcomeLabDateExample)
* section[=].entry[+] = Reference(WhoCoObservationOutcomeLabResultExample)
* section[=].entry[+] = Reference(WhoCoHospitalizationEncounterExample)

* section[+].title = "exposure risk"
* section[=].code = http://test.org/sectionCode#exposureRisk
* section[=].entry[+] = Reference(WhoCoObservationOutcomeContactsFollowedUnknownExample)
* section[=].entry[+] = Reference(WhoCoObservationOutcomeContactsFollowedExample)
