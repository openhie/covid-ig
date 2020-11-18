Instance: WhoCrConceptMapPatientAgeUnitsToRxnorm
InstanceOf: ConceptMap
Description: "Patient Age Units Concept Map To RxNorm"
Title: "Patient Age Units Concept Map To RxNorm" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapPatientAgeUnitsToRxnorm"
* sourceCanonical = Canonical(WhoCrValueSetAgeUnits)
* targetUri = $RXNORM
* group[0].source = Canonical(WhoCrValueSetAgeUnits)
* group[0].target = $RXNORM

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapPatientOutcomeToRxnorm
InstanceOf: ConceptMap
Description: "Patient Outcome Concept Map To RxNorm"
Title: "Patient Outcome Concept Map To RxNorm" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapPatientOutcomeToRxnorm"
* sourceCanonical = Canonical(WhoCrCodeSystemPatientOutcome)
* targetUri = $RXNORM
* group[0].source = Canonical(WhoCrCodeSystemPatientOutcome)
* group[0].target = $RXNORM

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapPregnancyTrimesterToRxnorm
InstanceOf: ConceptMap
Description: "Pregnancy Trimester Concept Map To RxNorm"
Title: "Pregnancy Trimester Concept Map To RxNorm" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapPregnancyTrimesterToRxnorm"
* sourceCanonical = Canonical(WhoCrCodeSystemPregnancyTrimester)
* targetUri = $RXNORM
* group[0].source = Canonical(WhoCrCodeSystemPregnancyTrimester)
* group[0].target = $RXNORM

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapReasonForTestingToRxnorm
InstanceOf: ConceptMap
Description: "Reason for Testing Concept Map To RxNorm"
Title: "Reason for Testing Concept Map To RxNorm" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapReasonForTestingToRxnorm"
* sourceCanonical = Canonical(WhoCrCodeSystemReasonForTesting)
* targetUri = $RXNORM
* group[0].source = Canonical(WhoCrCodeSystemReasonForTesting)
* group[0].target = $RXNORM

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapPatientSexAtBirthToRxnorm
InstanceOf: ConceptMap
Description: "Patient Sex At Birth Concept Map To RxNorm"
Title: "Patient Age Sex At Birth Concept Map To RxNorm" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapPatientSexAtBirthToRxnorm"
* sourceCanonical = Canonical(WhoCrValueSetSexAtBirth)
* targetUri = $RXNORM
* group[0].source = Canonical(WhoCrValueSetSexAtBirth)
* group[0].target = $RXNORM

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapTestResultToRxnorm
InstanceOf: ConceptMap
Description: "Test Result Concept Map To RxNorm"
Title: "Test Result Concept Map To RxNorm" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapTestResultToRxnorm"
* sourceCanonical = Canonical(WhoCrValueSetTestResult)
* targetUri = $RXNORM
* group[0].source = Canonical(WhoCrValueSetTestResult)
* group[0].target = $RXNORM

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapYesNoToRxnorm
InstanceOf: ConceptMap
Description: "Yes/No Concept Map To RxNorm"
Title: "Yes/No Concept Map To RxNorm" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapYesNoToRxnorm"
* sourceCanonical = Canonical(WhoCrValueSetYesNo)
* targetUri = $RXNORM
* group[0].source = Canonical(WhoCrValueSetYesNo)
* group[0].target = $RXNORM

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapSubmittedToRxnorm
InstanceOf: ConceptMap
Description: "SubmittedYes/No/Partial Concept Map To RxNorm"
Title: "SubmittedYes/No/Partial Concept Map To RxNorm" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapSubmittedToRxnorm"
* sourceCanonical = Canonical(WhoCrValueSetSubmitted)
* targetUri = $RXNORM
* group[0].source = Canonical(WhoCrValueSetSubmitted)
* group[0].target = $RXNORM

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapYesNoUnknownToRxnorm
InstanceOf: ConceptMap
Description: "Yes/No/Unknown Concept Map To RxNorm"
Title: "Yes/No/Unknown Concept Map To RxNorm" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapYesNoUnknownToRxnorm"
* sourceCanonical = Canonical(WhoCrValueSetYesNoUnk)
* targetUri = $RXNORM
* group[0].source = Canonical(WhoCrValueSetYesNoUnk)
* group[0].target = $RXNORM

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapComorbidityToRxnorm
InstanceOf: ConceptMap
Description: "Patient Comorbidities Concept Map To RxNorm"
Title: "Patient Comorbidities Concept Map To RxNorm" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapComorbidityToRxnorm"
* sourceCanonical = Canonical(WhoCrCodeSystemComorbidity)
* targetUri = $RXNORM
* group[0].source = Canonical(WhoCrCodeSystemComorbidity)
* group[0].target = $RXNORM

* group[0].element[0].code = #TODO
* group[0].element[0].target[0].code = #TODO
* group[0].element[0].target[0].equivalence = #relatedto
