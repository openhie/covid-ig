Instance: WhoLrSampleBundle
InstanceOf: Bundle
Usage: #example
Title: "WHO Lab Result Sample Bundle"
Description: "Sample of a clinical bundle representing a lab result"
* type = #transaction
* entry[+].fullUrl = "http://test.org/fhir/Patient/WhoLrSamplePatient"
* entry[=].resource = WhoLrSamplePatient
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"
* entry[+].fullUrl = "http://test.org/fhir/Organization/WhoLrSampleOrganizationLab"
* entry[=].resource = WhoLrSampleOrganizationLab
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"
* entry[+].fullUrl = "http://test.org/fhir/Organization/WhoLrSampleOrganizationOrderingClinic"
* entry[=].resource = WhoLrSampleOrganizationOrderingClinic
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"
* entry[+].fullUrl = "http://test.org/fhir/DiagnosticReport/WhoLrSampleDiagnosticReport"
* entry[=].resource = WhoLrSampleDiagnosticReport
* entry[=].request.method = #POST
* entry[=].request.url = "DiagnosticReport"
* entry[+].fullUrl = "http://test.org/fhir/Encounter/WhoLrSampleEncounter"
* entry[=].resource = WhoLrSampleEncounter
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"
* entry[+].fullUrl = "http://test.org/fhir/Encounter/WhoLrSampleSpecimen"
* entry[=].resource = WhoLrSampleSpecimen
* entry[=].request.method = #POST
* entry[=].request.url = "Specimen"
