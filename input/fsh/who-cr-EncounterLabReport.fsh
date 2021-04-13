Profile: WhoLrEncounter
Parent: Encounter
Title: "WHO Lab Report Encounter"
Description: "Defines an Encounter profile for the Lab Report"
* serviceProvider 1..1 MS
* subject 1..1 MS

Instance: WhoLrSampleEncounter
InstanceOf: WhoLrEncounter
Usage: #example
Title: "Lab Report Encounter Example"
Description: "Health facility ordering a Covid 19 lab test"
* serviceProvider = Reference(Covid19OrderingClinicOrganizationExample)
* status = #finished
* subject = Reference(Covid19PatientExample)
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#ACUTE
