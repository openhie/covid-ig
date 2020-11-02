Instance: WhoCrConceptMapPatientAgeUnitsToCiel
InstanceOf: ConceptMap
Description: "Patient Age Units Concept Map To CIEL"
Title: "Patient Age Units Concept Map To CIEL" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapPatientAgeUnitsToCiel"
* sourceCanonical = Canonical(WhoCrValueSetAgeUnits)
* targetUri = $CIEL
* group[0].source = Canonical(WhoCrValueSetAgeUnits)
* group[0].target = $CIEL

* group[0].element[0].code = $UCUM#a
* group[0].element[0].target[0].code = #1734 "Years"
* group[0].element[0].target[0].equivalence = #relatedto

* group[0].element[1].code = $UCUM#mo
* group[0].element[1].target[0].code = #1074 "Months"
* group[0].element[1].target[0].equivalence = #relatedto

* group[0].element[2].code = $UCUM#d
* group[0].element[2].target[0].code = #1072 "Days"
* group[0].element[2].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapPatientOutcomeToCiel
InstanceOf: ConceptMap
Description: "Patient Outcome Concept Map To CIEL"
Title: "Patient Outcome Concept Map To CIEL" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapPatientOutcomeToCiel"
* sourceCanonical = Canonical(WhoCrCodeSystemPatientOutcome)
* targetUri = $CIEL
* group[0].source = Canonical(WhoCrCodeSystemPatientOutcome)
* group[0].target = $CIEL

* group[0].element[0].code = #RECOVERED
* group[0].element[0].target[0].code = #165870 "Patient condition resolved"
* group[0].element[0].target[0].equivalence = #relatedto

* group[0].element[1].code = #NOTRECOVERED
* group[0].element[1].target[0].code = #165871 "Patient condition unresolved"
* group[0].element[1].target[0].equivalence = #relatedto

* group[0].element[2].code = #DEATH
* group[0].element[2].target[0].code = #160432 "Dead"
* group[0].element[2].target[0].equivalence = #relatedto

* group[0].element[3].code = #UNKNOWN
* group[0].element[3].target[0].code = #1067 "Unknown"
* group[0].element[3].target[0].equivalence = #relatedto

* group[0].element[4].code = #OTHER
* group[0].element[4].target[0].code = #5622 ""
* group[0].element[4].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapPregnancyTrimesterToCiel
InstanceOf: ConceptMap
Description: "Pregnancy Trimester Concept Map To CIEL"
Title: "Pregnancy Trimester Concept Map To CIEL" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapPregnancyTrimesterToCiel"
* sourceCanonical = Canonical(WhoCrCodeSystemPregnancyTrimester)
* targetUri = $CIEL
* group[0].source = Canonical(WhoCrCodeSystemPregnancyTrimester)
* group[0].target = $CIEL

* group[0].element[0].code = #first
* group[0].element[0].target[0].code = #1721 "FIRST TRIMESTER"
* group[0].element[0].target[0].equivalence = #relatedto

* group[0].element[1].code = #second
* group[0].element[1].target[0].code = #1722 "SECOND TRIMESTER"
* group[0].element[1].target[0].equivalence = #relatedto

* group[0].element[2].code = #third
* group[0].element[2].target[0].code = #1723 "THIRD TRIMESTER"
* group[0].element[2].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapReasonForTestingToCiel
InstanceOf: ConceptMap
Description: "Reason for Testing Concept Map To CIEL"
Title: "Reason for Testing Concept Map To CIEL" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapReasonForTestingToCiel"
* sourceCanonical = Canonical(WhoCrCodeSystemReasonForTesting)
* targetUri = $CIEL
* group[0].source = Canonical(WhoCrCodeSystemReasonForTesting)
* group[0].target = $CIEL

* group[0].element[0].code = #CASE_CONTACT
* group[0].element[0].target[0].code = #162633
* group[0].element[0].target[0].equivalence = #relatedto

* group[0].element[1].code = #SEEKING_HC
* group[0].element[1].target[0].code = #165650
* group[0].element[1].target[0].equivalence = #relatedto

* group[0].element[2].code = #POE_DETECTION
* group[0].element[2].target[0].code = #165651
* group[0].element[2].target[0].equivalence = #relatedto

* group[0].element[3].code = #REPATRIATION
* group[0].element[3].target[0].code = #165652
* group[0].element[3].target[0].equivalence = #relatedto

* group[0].element[4].code = #SURVEILLANCE
* group[0].element[4].target[0].code = #165653
* group[0].element[4].target[0].equivalence = #relatedto

* group[0].element[5].code = #UNKNOWN
* group[0].element[5].target[0].code = #1067
* group[0].element[5].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapPatientSexAtBirthToCiel
InstanceOf: ConceptMap
Description: "Patient Sex At Birth Concept Map To CIEL"
Title: "Patient Age Sex At Birth Concept Map To CIEL" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapPatientSexAtBirthToCiel"
* sourceCanonical = Canonical(WhoCrValueSetSexAtBirth)
* targetUri = $CIEL
* group[0].source = Canonical(WhoCrValueSetSexAtBirth)
* group[0].target = $CIEL

* group[0].element[0].code = $cs-gender#male
* group[0].element[0].target[0].code = #1534 "Male Gender"
* group[0].element[0].target[0].equivalence = #relatedto

* group[0].element[1].code = $cs-gender#female
* group[0].element[1].target[0].code = #1535 "Female gender"
* group[0].element[1].target[0].equivalence = #relatedto

* group[0].element[2].target[0].code = #1067 "Unknown"
* group[0].element[2].target[0].equivalence = #relatedto
* group[0].element[2].target[0].comment = "WHO data dictionary does not support"

Instance: WhoCrConceptMapTestResultToCiel
InstanceOf: ConceptMap
Description: "Test Result Concept Map To CIEL"
Title: "Test Result Concept Map To CIEL" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapTestResultToCiel"
* sourceCanonical = Canonical(WhoCrValueSetTestResult)
* targetUri = $CIEL
* group[0].source = Canonical(WhoCrValueSetTestResult)
* group[0].target = $CIEL

* group[0].element[0].code = $cs-v3-ObsInterpretation#POS "Positive"
* group[0].element[0].target[0].code = $CIEL#703 "Positive"
* group[0].element[0].target[0].equivalence = #relatedto

* group[0].element[1].code = $cs-v3-ObsInterpretation#NEG "Negative"
* group[0].element[1].target[0].code = $CIEL#664 "Negative"
* group[0].element[1].target[0].equivalence = #relatedto

* group[0].element[2].code = $cs-v2-0532#UNK // unknown
* group[0].element[2].target[0].code = $CIEL#1138 "Indeterminate"
* group[0].element[2].target[0].equivalence = #narrower
* group[0].element[2].target[0].comment = "Indeterminate only covers that we know a test was done, and that the test did not provide a conclusive result. Uunknown is more general."


Instance: WhoCrConceptMapYesNoToCiel
InstanceOf: ConceptMap
Description: "Yes/No Concept Map To CIEL"
Title: "Yes/No Concept Map To CIEL" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapYesNoToCiel"
* sourceCanonical = Canonical(WhoCrValueSetYesNo)
* targetUri = $CIEL
* group[0].source = Canonical(WhoCrValueSetYesNo)
* group[0].target = $CIEL

* group[0].element[0].code = #Y
* group[0].element[0].target[0].code = #1065
* group[0].element[0].target[0].equivalence = #relatedto

* group[0].element[1].code = #N
* group[0].element[1].target[0].code = #1066
* group[0].element[1].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapSubmittedToCiel
InstanceOf: ConceptMap
Description: "Submitted Yes/No/Partial Concept Map To CIEL"
Title: "Submitted Yes/No/Partial Concept Map To CIEL" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapSubmittedToCiel"
* sourceCanonical = Canonical(WhoCrValueSetSubmitted)
* targetUri = $CIEL
* group[0].source = Canonical(WhoCrValueSetSubmitted)
* group[0].target = $CIEL

* group[0].element[0].code = #Y
* group[0].element[0].target[0].code = #1065
* group[0].element[0].target[0].equivalence = #relatedto

* group[0].element[1].code = #N
* group[0].element[1].target[0].code = #1066
* group[0].element[1].target[0].equivalence = #relatedto

* group[0].element[0].code = #partial
* group[0].element[0].target[0].code = #162979
* group[0].element[0].target[0].equivalence = #relatedto


Instance: WhoCrConceptMapYesNoUnknownToCiel
InstanceOf: ConceptMap
Description: "Yes/No/Unknown Concept Map To CIEL"
Title: "Yes/No/Unknown Concept Map To CIEL" // user-friendly name
Usage: #definition

* insert PublisherContext
* name = "WhoCrConceptMapYesNoUnknownToCiel"
* sourceCanonical = Canonical(WhoCrValueSetYesNoUnk)
* targetUri = $CIEL
* group[0].source = Canonical(WhoCrValueSetYesNoUnk)
* group[0].target = $CIEL

* group[0].element[0].code = #Y
* group[0].element[0].target[0].code = #1065
* group[0].element[0].target[0].equivalence = #relatedto

* group[0].element[1].code = #N
* group[0].element[1].target[0].code = #1066
* group[0].element[1].target[0].equivalence = #relatedto

* group[0].element[2].code = #UNK
* group[0].element[2].target[0].code = #1067
* group[0].element[2].target[0].equivalence = #relatedto


