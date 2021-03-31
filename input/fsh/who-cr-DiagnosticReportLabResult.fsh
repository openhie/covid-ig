Profile: Covid19LabResult
Parent: DiagnosticReport
Id: covid19-lab-result-report
Title: "COVID-19 Lab Result"
Description: "Defines a diagnostic report profile for the COVID-19 Lab Result"
* identifier 1..1 MS
* conclusionCode 1..1 MS
* category 1..1 MS
* specimen 1..1 MS
* performer 1..1 MS
* subject 1..1 MS

Instance: Covid19LabDiagnosticReportExample
InstanceOf: Covid19LabResult
Usage: #example
Title: "COVID-19 Lab Result example"
Description: "COVID-19 Patient example"
* identifier.system = "http://example.org/"
* identifier.value = "12345"
* conclusionCode.coding[0].system = "http://example.org/"
* conclusionCode.coding[0].code = $LNC#94500-6
* status = #final
* code = $LNC#10207-9
* conclusionCode.coding[0].display = "Negative"
* conclusionCode.text = "Negative result for Covid19"
* category.coding[0].system = "http://example.org/"
* category.coding[0].code = $LNC#94500-6
* category.coding[0].display = "Laboratory"
* category.text = "Covid19 Laboratory"
* specimen = Reference(Covid19Specimen/example)
* performer = Reference(WhoCrPractitionerExample)
* subject = Reference(Covid19PatientExample)