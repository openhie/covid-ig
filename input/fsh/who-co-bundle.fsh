Instance: WhoCoBundleExample
InstanceOf: Bundle
Usage: #example
Title: "Who Co Bundle Example"
Description: "Example of a clinical bundle representing a case outcome"
* type = #transaction

* entry[+].fullUrl = "http://test.org/fhir/Composition/WhoCoCompositionExample"
* entry[=].resource = WhoCoCompositionExample
* entry[=].request.method = #POST
* entry[=].request.url = "Composition"

* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCoObservationOutcomeAsympExample"
* entry[=].resource = WhoCoObservationOutcomeAsympExample
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCoObservationPatcourseAdmitExample"
* entry[=].resource = WhoCoObservationPatcourseAdmitExample
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCoObservationPatcourseAdmitDateExample"
* entry[=].resource = WhoCoObservationPatcourseAdmitDateExample
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCoObservationOutcomePatcourseIcuExample"
* entry[=].resource = WhoCoObservationOutcomePatcourseIcuExample
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCoObservationOutcomePatcourseVentExample"
* entry[=].resource = WhoCoObservationOutcomePatcourseVentExample
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCoObservationOutcomePatcourseEcmoExample"
* entry[=].resource = WhoCoObservationOutcomePatcourseEcmoExample
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCoObservationOutcomePatcourseStatusExample"
* entry[=].resource = WhoCoObservationOutcomePatcourseStatusExample
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCoObservationOutcomeLabResultExample"
* entry[=].resource = WhoCoObservationOutcomeLabResultExample
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCoObservationOutcomeContactsFollowedExample"
* entry[=].resource = WhoCoObservationOutcomeContactsFollowedExample
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "http://test.org/fhir/Encounter/WhoCoHospitalEncounterExample"
* entry[=].resource = WhoCoHospitalEncounterExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Encounter"

* entry[+].fullUrl = "http://test.org/fhir/Encounter/WhoCoEncounterExample"
* entry[=].resource = WhoCoEncounterExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Encounter"
