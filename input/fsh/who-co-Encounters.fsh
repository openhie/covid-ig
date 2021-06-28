Profile: WhoCoHospitalEncounter
Parent: WhoCrEncounterHospitalAdmission
Id: who-co-hospitalization-encounter
Title: "WHO CO Hospital Encounter"
Description: "WHO CO Hospital Encounter"
* status = #finished
* period 1..1
* period.end 1..1
* class.code = http://terminology.hl7.org/CodeSystem/v3-ActCode#ACUTE

Profile: WhoCoEncounter
Parent: WhoCrEncounter
Id: who-co-encounter
Title: "WHO CO Encounter"
Description: "WHO CO Encounter"
* status = #finished
* period 1..1
* period.end 1..1
* class.code = http://terminology.hl7.org/CodeSystem/v3-ActCode#ACUTE

/**
 * Examples
 */

Instance: WhoCoHospitalEncounterExample
InstanceOf: WhoCoHospitalEncounter
Usage: #example
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#ACUTE
* period.start = "2021-05-12"
* period.end = "2021-05-13"

Instance: WhoCoEncounterExample
InstanceOf: WhoCoEncounter
Usage: #example
* location.location = Reference(WhoCrLocationExample)
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#ACUTE
* reasonCode = WhoCrCodeSystemReasonForTesting#CASE_CONTACT
* period.start = "2021-05-12"
* period.end = "2021-05-13"
