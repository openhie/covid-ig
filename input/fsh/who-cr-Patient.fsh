Profile:    WhoCrPatient
Parent:     Patient
Description: "WHO Case Reporting Patient"
Title:      "WHO Case Reporting Patient"

* insert PublisherContextDefinitional

// * extension contains $ext-us-birthsex named birthSex 1..1
// * address ^slicing.discriminator.type = #value
// * address ^slicing.discriminator.path = "use"
// * address ^slicing.rules = #open
// * address contains 
//     residency 1..*
// * address[residency].use = #home
// * address[residency].country 1..1


Instance:       WhoCrSamplePatient
InstanceOf:     WhoCrPatient
// InstanceOf:     Patient
Description:    "WHO Case Reporting Sample Patient"
Title:          "WHO Case Reporting Sample Patient"
Usage:          #example

// * extension[birthSex].valueCode = #F
* address[0].use = #home
* address[0].country = $cs-iso3166-1#URY

Profile: Covid19Patient
Parent: Patient
Id: covid19-Patient
Title: "COVID-19 Lab Result Patient"
Description: "Defines a patient profile for the COVID-19 Lab Result"
* identifier 1..1 MS
* name 1..1 MS
* name.family 1..1 MS
* name.given 1..* MS
* gender 1..1 MS
* birthDate 1..1 MS
* address 1..1 MS
* address.district 1..1 MS

Instance: Covid19PatientExample
InstanceOf: Covid19Patient
Usage: #example
Title: "COVID-19 Lab Result Patient"
Description: "COVID-19 Patient example"
* identifier.value = "12345"
* name.family = "Doe"
* name.given = "John"
* gender = #male
* birthDate = "1981-05-21"
* address.district = "City of Cape Town"
