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
// TODO

* section[exposureRisk].title = "exposure risk"
// TODO

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
