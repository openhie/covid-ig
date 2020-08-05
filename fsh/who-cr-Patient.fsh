Profile: WhoCrPatient
Parent: Patient
Description: "WHO Case Reporting Patient"
* extension contains http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex named birthSex 1..1
* address ^slicing.discriminator.type = #value
* address ^slicing.discriminator.path = "use"
* address ^slicing.rules = #open
* address contains 
    residency 1..*
* address[residency].use = #home
* address[residency].country 1..1
