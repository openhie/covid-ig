Profile: WhoLrDiagnosticReport
Parent: DiagnosticReport
Title: "WHO Lab Result Diagnostic Report"
Description: "Defines a diagnostic report profile for the COVID-19 Lab Result"
* identifier 1..1 MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* effectiveDateTime 1..1 MS
* conclusionCode 1..1 MS
* category 1..1 MS
* specimen 1..1 MS
* performer 1..1 MS
* subject 1..1 MS
* subject.reference 1..1 MS
* encounter 1..1 MS

Instance: WhoLrSampleDiagnosticReport
InstanceOf: WhoLrDiagnosticReport
Usage: #example
Title: "WHO Lab result Sample Diagnostic Report"
Description: "WHO Lab result Sample Diagnostic Report"
* identifier.system = "http://example.org/"
* identifier.value = "12345"
* effectiveDateTime = "2021-03-03"
* conclusionCode.coding[0] = $cs-v3-ObsInterpretation#NEG "Negative"
* status = #final
* code = $LNC#11502-2 "Laboratory report"
* conclusionCode.text = "Negative result for Covid19"
* category.coding[0] =  $valueset-diagnostic-service#VR "Virology"
* category.text = "COVID-19 PCR TEST"
* specimen = Reference(WhoLrSampleSpecimen)
* performer = Reference(WhoCrPractitionerExample)
* subject = Reference(WhoLrPatientExample)
* encounter = Reference(WhoCrSampleEncounter)
