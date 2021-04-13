Profile: WhoLrEncounter
Parent: Encounter
Title: "WHO Lab Report Encounter"
Description: "Defines an Encounter profile for the Lab Report"
* serviceProvider 1..1 MS
* subject 1..1 MS

Instance: WhoLrSampleEncounter
InstanceOf: WhoLrEncounter
Usage: #example
Title: "WHO Lab Report Encounter Example"
Description: "Health facility ordering a Covid 19 lab test"
* serviceProvider = Reference(WhoLrSampleOrganizationOrderingClinic)
* status = #finished
* subject = Reference(WhoLrSamplePatient)
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#ACUTE
