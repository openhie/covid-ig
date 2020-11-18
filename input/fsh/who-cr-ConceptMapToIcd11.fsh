Instance: WhoCrConceptMapPatientAgeUnitsToIcd11
InstanceOf: ConceptMap
Description: "Patient Age Units Concept Map To ICD-11"
Title: "Patient Age Units Concept Map To ICD-11" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapPatientAgeUnitsToIcd11"
* sourceCanonical = Canonical(WhoCrValueSetAgeUnits)
* targetUri = $ICD11
* group[0].source = Canonical(WhoCrValueSetAgeUnits)
* group[0].target = $ICD11

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapPatientOutcomeToIcd11
InstanceOf: ConceptMap
Description: "Patient Outcome Concept Map To ICD-11"
Title: "Patient Outcome Concept Map To ICD-11" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapPatientOutcomeToIcd11"
* sourceCanonical = Canonical(WhoCrCodeSystemPatientOutcome)
* targetUri = $ICD11
* group[0].source = Canonical(WhoCrCodeSystemPatientOutcome)
* group[0].target = $ICD11

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapPregnancyTrimesterToIcd11
InstanceOf: ConceptMap
Description: "Pregnancy Trimester Concept Map To ICD-11"
Title: "Pregnancy Trimester Concept Map To ICD-11" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapPregnancyTrimesterToIcd11"
* sourceCanonical = Canonical(WhoCrCodeSystemPregnancyTrimester)
* targetUri = $ICD11
* group[0].source = Canonical(WhoCrCodeSystemPregnancyTrimester)
* group[0].target = $ICD11

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapReasonForTestingToIcd11
InstanceOf: ConceptMap
Description: "Reason for Testing Concept Map To ICD-11"
Title: "Reason for Testing Concept Map To ICD-11" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapReasonForTestingToIcd11"
* sourceCanonical = Canonical(WhoCrCodeSystemReasonForTesting)
* targetUri = $ICD11
* group[0].source = Canonical(WhoCrCodeSystemReasonForTesting)
* group[0].target = $ICD11

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapPatientSexAtBirthToIcd11
InstanceOf: ConceptMap
Description: "Patient Sex At Birth Concept Map To ICD-11"
Title: "Patient Age Sex At Birth Concept Map To ICD-11" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapPatientSexAtBirthToIcd11"
* sourceCanonical = Canonical(WhoCrValueSetSexAtBirth)
* targetUri = $ICD11
* group[0].source = Canonical(WhoCrValueSetSexAtBirth)
* group[0].target = $ICD11

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapTestResultToIcd11
InstanceOf: ConceptMap
Description: "Test Result Concept Map To ICD-11"
Title: "Test Result Concept Map To ICD-11" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapTestResultToIcd11"
* sourceCanonical = Canonical(WhoCrValueSetTestResult)
* targetUri = $ICD11
* group[0].source = Canonical(WhoCrValueSetTestResult)
* group[0].target = $ICD11

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapYesNoToIcd11
InstanceOf: ConceptMap
Description: "Yes/No Concept Map To ICD-11"
Title: "Yes/No Concept Map To ICD-11" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapYesNoToIcd11"
* sourceCanonical = Canonical(WhoCrValueSetYesNo)
* targetUri = $ICD11
* group[0].source = Canonical(WhoCrValueSetYesNo)
* group[0].target = $ICD11

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapSubmittedToIcd11
InstanceOf: ConceptMap
Description: "Submitted Yes/No/Partial Concept Map To ICD-11"
Title: "Submitted Yes/No/Partial Concept Map To ICD-11" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapSubmittedToIcd11"
* sourceCanonical = Canonical(WhoCrValueSetSubmitted)
* targetUri = $ICD11
* group[0].source = Canonical(WhoCrValueSetSubmitted)
* group[0].target = $ICD11

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapYesNoUnknownToIcd11
InstanceOf: ConceptMap
Description: "Yes/No/Unknown Concept Map To ICD-11"
Title: "Yes/No/Unknown Concept Map To ICD-11" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapYesNoUnknownToIcd11"
* sourceCanonical = Canonical(WhoCrValueSetYesNoUnk)
* targetUri = $ICD11
* group[0].source = Canonical(WhoCrValueSetYesNoUnk)
* group[0].target = $ICD11

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapComorbidityToIcd11
InstanceOf: ConceptMap
Description: "Patient Comorbidities Concept Map To ICD-11"
Title: "Patient Comorbidities Concept Map To ICD-11" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapComorbidityToIcd11"
* sourceCanonical = Canonical(WhoCrCodeSystemComorbidity)
* targetUri = $ICD11
* group[0].source = Canonical(WhoCrCodeSystemComorbidity)
* group[0].target = $ICD11

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto
