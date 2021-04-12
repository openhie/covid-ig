Profile: Covid19OrganizationTestLab
Parent: Organization
Id: covid19-organization-testlab
Title: "COVID-19 Lab Test Organization"
Description: "Defines an organization profile for the COVID-19 Test"
* identifier 1..1 MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS

Profile: Covid19OrganizationOrderingClinic
Parent: Organization
Id: covid19-ordering-clinic-organization
Title: "COVID-19 Ordering clinic Organization"
Description: "Defines an organization profile for the COVID-19 Lab Result ordering clinic"
* name 1..1 MS

Instance: Covid19TestLabOrganizationExample
InstanceOf: Covid19OrganizationTestLab
Usage: #example
Title: "COVID-19 Test Lab Organization Example"
Description: "COVID-19 Test Lab organization example"
* identifier.system = "http://example.org"
* identifier.value = "12345"

Instance: Covid19OrderingClinicOrganizationExample
InstanceOf: Covid19OrganizationOrderingClinic
Usage: #example
Title: "COVID-19 Ordering Clinic Organization Example"
Description: "COVID-19 Ordering Clinic organization example"
* name = "KEMRI Clinic"

Instance: Covid19OrderingClinicPatientEncounterExample
InstanceOf: Encounter
Usage: #example
Title: "COVID-19 Ordering Clinic Patient Encounter Example"
Description: "COVID-19 Ordering Clinic patient example"
* serviceProvider = Reference(Covid19OrderingClinicOrganizationExample)
* status = #finished
* subject = Reference(Covid19PatientExample)
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#ACUTE
