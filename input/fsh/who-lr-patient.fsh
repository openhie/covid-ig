Profile: WhoLrPatient
Parent: Patient
Title: "WHO Lab Result Patient"
Description: "Defines a patient profile for the Lab Result"
* identifier 1..1 MS
* identifier.value 1..1 MS
* identifier.system 1..1 MS
* name 0..1 MS
* gender 1..1 MS
* birthDate 1..1 MS
* address 1..1 MS
* address.district 1..1 MS

Instance: WhoLrSamplePatient
InstanceOf: WhoLrPatient
Usage: #example
Title: "WHO Lab Result Sample Patient"
Description: "WHO Lab Result Sample Patient"
* identifier.value = "12345"
* identifier.system = "http://example.org/"
* name.text = "John Doe"
* gender = #male
* birthDate = "1981-05-21"
* address.district = "Western Cape"
