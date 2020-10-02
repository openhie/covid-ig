Instance: WhoCrConceptMapPatientAgeUnitsToLoinc
InstanceOf: ConceptMap
Description: "Patient Age Units Concept Map To LOINC"
Title: "Patient Age Units Concept Map To LOINC" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapPatientAgeUnitsToLoinc"
* sourceCanonical = Canonical(WhoCrValueSetAgeUnits)
* targetUri = $LNC
* group[0].source = Canonical(WhoCrValueSetAgeUnits)
* group[0].target = $LNC

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapPatientOutcomeToLoinc
InstanceOf: ConceptMap
Description: "Patient Outcome Concept Map To LOINC"
Title: "Patient Outcome Concept Map To LOINC" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapPatientOutcomeToLoinc"
* sourceCanonical = Canonical(WhoCrCodeSystemPatientOutcome)
* targetUri = $LNC
* group[0].source = Canonical(WhoCrCodeSystemPatientOutcome)
* group[0].target = $LNC

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapPregnancyTrimesterToLoinc
InstanceOf: ConceptMap
Description: "Pregnancy Trimester Concept Map To LOINC"
Title: "Pregnancy Trimester Concept Map To LOINC" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapPregnancyTrimesterToLoinc"
* sourceCanonical = Canonical(WhoCrCodeSystemPregnancyTrimester)
* targetUri = $LNC
* group[0].source = Canonical(WhoCrCodeSystemPregnancyTrimester)
* group[0].target = $LNC

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapReasonForTestingToLoinc
InstanceOf: ConceptMap
Description: "Reason for Testing Concept Map To LOINC"
Title: "Reason for Testing Concept Map To LOINC" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapReasonForTestingToLoinc"
* sourceCanonical = Canonical(WhoCrCodeSystemReasonForTesting)
* targetUri = $LNC
* group[0].source = Canonical(WhoCrCodeSystemReasonForTesting)
* group[0].target = $LNC

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapPatientSexAtBirthToLoinc
InstanceOf: ConceptMap
Description: "Patient Sex At Birth Concept Map To LOINC"
Title: "Patient Age Sex At Birth Concept Map To LOINC" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapPatientSexAtBirthToLoinc"
* sourceCanonical = Canonical(WhoCrValueSetSexAtBirth)
* targetUri = $LNC
* group[0].source = Canonical(WhoCrValueSetSexAtBirth)
* group[0].target = $LNC

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapTestResultToLoinc
InstanceOf: ConceptMap
Description: "Test Result Concept Map To LOINC"
Title: "Test Result Concept Map To LOINC" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapTestResultToLoinc"
* sourceCanonical = Canonical(WhoCrValueSetTestResult)
* targetUri = $LNC
* group[0].source = Canonical(WhoCrValueSetTestResult)
* group[0].target = $LNC

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapYesNoToLoinc
InstanceOf: ConceptMap
Description: "Yes/No Concept Map To LOINC"
Title: "Yes/No Concept Map To LOINC" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapYesNoToLoinc"
* sourceCanonical = Canonical(WhoCrValueSetYesNo)
* targetUri = $LNC
* group[0].source = Canonical(WhoCrValueSetYesNo)
* group[0].target = $LNC

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapSubmittedToLoinc
InstanceOf: ConceptMap
Description: "Submitted Yes/No/Partial Concept Map To LOINC"
Title: "Submitted Yes/No/Partial Concept Map To LOINC" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapSubmittedToLoinc"
* sourceCanonical = Canonical(WhoCrValueSetSubmitted)
* targetUri = $LNC
* group[0].source = Canonical(WhoCrValueSetSubmitted)
* group[0].target = $LNC

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapYesNoUnknownToLoinc
InstanceOf: ConceptMap
Description: "Yes/No/Unknown Concept Map To LOINC"
Title: "Yes/No/Unknown Concept Map To LOINC" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapYesNoUnknownToLoinc"
* sourceCanonical = Canonical(WhoCrValueSetYesNoUnk)
* targetUri = $LNC
* group[0].source = Canonical(WhoCrValueSetYesNoUnk)
* group[0].target = $LNC

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto


