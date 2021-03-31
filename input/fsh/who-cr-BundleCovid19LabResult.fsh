Instance: WhoCrLabResultBundleExample
InstanceOf: Bundle
Usage: #example
Title: "Who Cr Bundle Example"
Description: "Example of a clinical bundle representing a lab result"
* type = #transaction
* entry[+].fullUrl = "http://test.org/fhir/Patient/Covid19PatientExample"
* entry[=].resource = Covid19PatientExample
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"
* entry[+].fullUrl = "http://test.org/fhir/Organization/Covid19TestLabOrganizationExample"
* entry[=].resource = Covid19TestLabOrganizationExample
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"
* entry[+].fullUrl = "http://test.org/fhir/Organization/Covid19OrderingClinicOrganizationExample"
* entry[=].resource = Covid19OrderingClinicOrganizationExample
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"
* entry[+].fullUrl = "http://test.org/fhir/Practitioner/WhoCrPractitionerExample"
* entry[=].resource = WhoCrPractitionerExample
* entry[=].request.method = #POST
* entry[=].request.url = "Practitioner"
* entry[+].fullUrl = "http://test.org/fhir/DiagnosticReport/Covid19LabDiagnosticReportExample"
* entry[=].resource = Covid19LabDiagnosticReportExample
* entry[=].request.method = #POST
* entry[=].request.url = "DiagnosticReport"
* entry[+].fullUrl = "http://test.org/fhir/Encounter/Covid19OrderingClinicPatientEncounterExample"
* entry[=].resource = Covid19OrderingClinicPatientEncounterExample
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"
* entry[+].fullUrl = "http://test.org/fhir/Observation/WhoCrObservationLabTestDateExample"
* entry[=].resource = WhoCrObservationLabTestDateExample
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
