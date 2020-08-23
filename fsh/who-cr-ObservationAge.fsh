// // Replicates age-1 invariant on Quantity data type from FHIR R4
// Invariant:      age-1
// Description:    "There SHALL be a code if there is a value and it SHALL be an expression of time.  
//                 If system is present, it SHALL be UCUM.  If value is present, it SHALL be positive."
// Expression:     "(code.exists() or value.empty()) and (system.empty() or system = %ucum) and (value.empty() or value.hasValue().not() or value > 0)"
// Severity:       #error
// XPath:          "(f:code or not(f:value)) and (not(exists(f:system)) or f:system/@value='http://unitsofmeasure.org') and (not(f:value/@value) or f:value/@value >=0)"


// Profile:    WhoCrObservationAge
// Parent:     Observation
// Description:    "WHO Case Reporting Patient Age Observation"
// * subject only Reference(WhoCrPatient) 
// * subject 1..1
// * effectiveDateTime 1..1
// * extension contains http://hl7.org/fhir/StructureDefinition/workflow-episodeOfCare named episodeOfCare 1..*
// * extension[episodeOfCare].valueReference 1..1
// * extension[episodeOfCare].valueReference only Reference(WhoCrEpisodeOfCare)
// * focus 0..0
// * bodySite 0..0
// * specimen 0..0
// * hasMember 0..0
// * component 0..0

// * code = http://loinc.org#30525-0  // "Age"

// * valueQuantity obeys age-1
// * valueQuantity.value 1..1
// * valueQuantity from WhoCrValueSetAgeUnits
// // TODO: add constraints for use days for < 1 month, months for < 1 year, otherwise years
