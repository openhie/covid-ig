Profile: WhoCrDiagnosticReport
Parent: DiagnosticReport
Id: covid19-lab-result-report
Title: "COVID-19 Lab Result"
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

Instance: Covid19LabDiagnosticReportExample
InstanceOf: WhoCrDiagnosticReport
Usage: #example
Title: "COVID-19 Lab Result example"
Description: "COVID-19 Patient example"
* identifier.system = "http://example.org/"
* identifier.value = "12345"
* effectiveDateTime = "2021-03-03"
* conclusionCode.coding[0] = $LNC#94500-6 "Negative"
* status = #final
* code = $LNC#11502-2 "Laboratory report"
* conclusionCode.text = "Negative result for Covid19"
* category.coding[0] = $LNC#94500-6 "Laboratory"
* category.text = "Covid19 Laboratory"
* specimen = Reference(WhoLrSampleSpecimen)
* performer = Reference(WhoCrPractitionerExample)
* subject = Reference(WhoLrPatientExample)
* encounter = Reference(WhoCrSampleEncounter)
