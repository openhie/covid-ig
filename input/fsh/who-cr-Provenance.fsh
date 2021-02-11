Profile:    WhoCompositionProvenance
Parent:     Provenance
Description: "TODO"

// * target 

* reason ^slicing.discriminator.type = #pattern
* reason ^slicing.discriminator.path = "role"
* reason ^slicing.rules = #open 

* reason contains 
    reasonPubHealth 1..* 

* reason[reasonPubHealth] = http://terminology.hl7.org/ValueSet/v3-PurposeOfUse#PUBHLTH

* entity ^slicing.discriminator.type = #pattern
* entity ^slicing.discriminator.path = "role"
* entity ^slicing.rules = #open
* entity contains 
    sourceQuestionnaireResponse 1..* 

* entity[sourceQuestionnaireResponse].role = #source
* entity[sourceQuestionnaireResponse].what only Reference(WhoCrQuestionnaireResponseCovid19Surveillance)


ValueSet: WhoCrValueSetQuestionnaireResponseAcceptedStatus
Title: "Who Case Reporting Acceptable QuestionnaireResponse Statuses"
Description: "TODO"

* insert PublisherContextDefinitional

* include http://hl7.org/fhir/questionnaire-answers-status#completed
* include http://hl7.org/fhir/questionnaire-answers-status#amended
* include http://hl7.org/fhir/questionnaire-answers-status#stopped


Profile:    WhoCrQuestionnaireResponseCovid19Surveillance
Parent:     $prof-sdc-questionnaireResponse
Description: "Who Case Reporting QuestionnaireResponse"
Title:      "Who Case Reporting QuestionnaireResponse"

* questionnaire = "http://openhie.github.io/covid-19/Questionnaire/WhoCrQuestionnaireCovid19Surveillance"
// * questionnaire = Canonical(WhoCrQuestionnaireCovid19Surveillance)
* status from WhoCrValueSetQuestionnaireResponseAcceptedStatus
* subject only Reference(WhoCrPatient) 