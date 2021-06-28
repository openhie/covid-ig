Profile: WhoLrOrganizationLab
Parent: Organization
Title: "WHO LR Lab Test Organization"
Description: "Defines an organization profile for the COVID-19 Test"
* identifier 1..1 MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS

Profile: WhoLrOrganizationOrderingClinic
Parent: Organization
Title: "WHO LR Ordering clinic Organization"
Description: "Defines an organization profile for the COVID-19 Lab Result ordering clinic"
* name 1..1 MS

Instance: WhoLrSampleOrganizationLab
InstanceOf: WhoLrOrganizationLab
Usage: #example
Title: "WHO Lab Result Organization Lab Sample"
Description: "WHO Lab Result Organization Lab Sample"
* identifier.system = "http://example.org"
* identifier.value = "12345"

Instance: WhoLrSampleOrganizationOrderingClinic
InstanceOf: WhoLrOrganizationOrderingClinic
Usage: #example
Title: "WHO Lab Result Organization Ordering Clinic Sample"
Description: "WHO Lab Result Organization Ordering Clinic Sample"
* name = "KEMRI Clinic"
