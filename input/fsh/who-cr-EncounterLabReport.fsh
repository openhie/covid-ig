Instance: Covid19OrderingClinicPatientEncounterExample
InstanceOf: Encounter
Usage: #example
Title: "COVID-19 Ordering Clinic Patient Encounter Example"
Description: "COVID-19 Ordering Clinic patient example"
* serviceProvider = Reference(Covid19OrderingClinicOrganizationExample)
* status = #finished
* subject = Reference(Covid19PatientExample)
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#ACUTE
