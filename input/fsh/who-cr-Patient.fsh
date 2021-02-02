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