Instance: WhoCrConceptMapPatientAgeUnitsToIcd10
InstanceOf: ConceptMap
Description: "Patient Age Units Concept Map To ICD-10"
Title: "Patient Age Units Concept Map To ICD-10" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapPatientAgeUnitsToIcd10"
* sourceCanonical = Canonical(WhoCrValueSetAgeUnits)
* targetUri = $ICD10
* group[0].source = Canonical(WhoCrValueSetAgeUnits)
* group[0].target = $ICD10

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapPatientOutcomeToIcd10
InstanceOf: ConceptMap
Description: "Patient Outcome Concept Map To ICD-10"
Title: "Patient Outcome Concept Map To ICD-10" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapPatientOutcomeToIcd10"
* sourceCanonical = Canonical(WhoCrCodeSystemPatientOutcome)
* targetUri = $ICD10
* group[0].source = Canonical(WhoCrCodeSystemPatientOutcome)
* group[0].target = $ICD10

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapPregnancyTrimesterToIcd10
InstanceOf: ConceptMap
Description: "Pregnancy Trimester Concept Map To ICD-10"
Title: "Pregnancy Trimester Concept Map To ICD-10" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapPregnancyTrimesterToIcd10"
* sourceCanonical = Canonical(WhoCrCodeSystemPregnancyTrimester)
* targetUri = $ICD10
* group[0].source = Canonical(WhoCrCodeSystemPregnancyTrimester)
* group[0].target = $ICD10

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapReasonForTestingToIcd10
InstanceOf: ConceptMap
Description: "Reason for Testing Concept Map To ICD-10"
Title: "Reason for Testing Concept Map To ICD-10" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapReasonForTestingToIcd10"
* sourceCanonical = Canonical(WhoCrCodeSystemReasonForTesting)
* targetUri = $ICD10
* group[0].source = Canonical(WhoCrCodeSystemReasonForTesting)
* group[0].target = $ICD10

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapPatientSexAtBirthToIcd10
InstanceOf: ConceptMap
Description: "Patient Sex At Birth Concept Map To ICD-10"
Title: "Patient Age Sex At Birth Concept Map To ICD-10" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapPatientSexAtBirthToIcd10"
* sourceCanonical = Canonical(WhoCrValueSetSexAtBirth)
* targetUri = $ICD10
* group[0].source = Canonical(WhoCrValueSetSexAtBirth)
* group[0].target = $ICD10

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapTestResultToIcd10
InstanceOf: ConceptMap
Description: "Test Result Concept Map To ICD-10"
Title: "Test Result Concept Map To ICD-10" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapTestResultToIcd10"
* sourceCanonical = Canonical(WhoCrValueSetTestResult)
* targetUri = $ICD10
* group[0].source = Canonical(WhoCrValueSetTestResult)
* group[0].target = $ICD10

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapYesNoToIcd10
InstanceOf: ConceptMap
Description: "Yes/No Concept Map To ICD-10"
Title: "Yes/No Concept Map To ICD-10" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapYesNoToIcd10"
* sourceCanonical = Canonical(WhoCrValueSetYesNo)
* targetUri = $ICD10
* group[0].source = Canonical(WhoCrValueSetYesNo)
* group[0].target = $ICD10

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapSubmittedToIcd10
InstanceOf: ConceptMap
Description: "Yes/No/Partial Concept Map To ICD-10"
Title: "Yes/No/Partial Concept Map To ICD-10" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapSubmittedToIcd10"
* sourceCanonical = Canonical(WhoCrValueSetSubmitted)
* targetUri = $ICD10
* group[0].source = Canonical(WhoCrValueSetSubmitted)
* group[0].target = $ICD10

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapYesNoUnknownToIcd10
InstanceOf: ConceptMap
Description: "Yes/No/Unknown Concept Map To ICD-10"
Title: "Yes/No/Unknown Concept Map To ICD-10" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapYesNoUnknownToIcd10"
* sourceCanonical = Canonical(WhoCrValueSetYesNoUnk)
* targetUri = $ICD10
* group[0].source = Canonical(WhoCrValueSetYesNoUnk)
* group[0].target = $ICD10

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto


