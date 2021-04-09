Alias: $LNC = http://loinc.org
Alias: $CIEL = https://openconceptlab.org/orgs/CIEL/sources/CIEL
Alias: $ICD10 = https://icd.who.int/browse10
Alias: $ICD11 = https://icd.who.int/browse11
Alias: $RXNORM = http://www.nlm.nih.gov/research/umls/rxnorm
Alias: $SCT = http://snomed.info/sct
Alias: $UCUM = http://unitsofmeasure.org

Alias: $cs-dataAbsent = http://terminology.hl7.org/CodeSystem/data-absent-reason
Alias: $cs-gender = http://hl7.org/fhir/administrative-gender
Alias: $cs-iso3166-1 = urn:iso:std:iso:3166 // country codes (2-, 3-letter, numerical)
Alias: $cs-iso3166-2 = urn:iso:std:iso:3166:-2 // subnational codes as NN-SSS (2-letter national, 3 letter subnational)
Alias: $cs-itemControl = http://hl7.org/fhir/questionnaire-item-control
Alias: $cs-m49 = http://unstats.un.org/unsd/methods/m49/m49.htm
Alias: $cs-v2-0136 = http://terminology.hl7.org/CodeSystem/v2-0136
Alias: $cs-v2-0532 = http://terminology.hl7.org/CodeSystem/v2-0532
Alias: $cs-v3-ObsInterpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation

Alias: $vs-iso3166-1-2 = http://hl7.org/fhir/ValueSet/iso3166-1-2 // 2-letter country codes
Alias: $vs-iso3166-2 = WhoCrValueSetAdmin1 // http://hl7.org/fhir/ValueSet/iso3166-2 // subnational codes

Alias: $ext-variable            = http://hl7.org/fhir/StructureDefinition/variable
Alias: $ext-minValue    = http://hl7.org/fhir/StructureDefinition/minValue
Alias: $ext-maxValue    = http://hl7.org/fhir/StructureDefinition/maxValue
Alias: $ext-maxDecimalPlaces = http://hl7.org/fhir/StructureDefinition/maxDecimalPlaces
Alias: $ext-questionnaire-displayCategory   = http://hl7.org/fhir/StructureDefinition/questionnaire-displayCategory
Alias: $ext-questionnaire-itemControl   = http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl
Alias: $ext-questionnaire-unitValueSet  = http://hl7.org/fhir/StructureDefinition/questionnaire-unitValueSet
Alias: $ext-sdc-questionnaire-maxQuantity = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-maxQuantity
Alias: $ext-sdc-questionnaire-minQuantity = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-minQuantity
Alias: $ext-sdc-questionnaire-itemExtractionContext = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext

Alias: $ext-us-birthsex = http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex

Alias: $prof-sdc-questionnaire-base = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire
Alias: $prof-sdc-questionnaire-adv-render = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-render
Alias: $prof-sdc-questionnaire-extract-definition = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-defn
Alias: $prof-sdc-questionnaire-adv-behave = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-behave
Alias: $prof-sdc-questionnaireResponse = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaireresponse
Alias: $prof-sdc-valueset = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-valueset

RuleSet: PublisherContextInstance
* status = #draft
* experimental = true
* publisher = "OpenHIE"
* contact[0].name = "Elliot Silver"
* contact[0].telecom[0].system = #email
* contact[0].telecom[0].value = "elliot@argentixinfo.com"
* contact[0].telecom[0].use = #work
* jurisdiction = $cs-m49#001
* copyright = "{{{year}}}"
// * date

RuleSet: PublisherContextDefinitional
* ^status = #draft
* ^experimental = true
* ^publisher = "OpenHIE"
* ^contact[0].name = "Elliot Silver"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "elliot@argentixinfo.com"
* ^contact[0].telecom[0].use = #work
* ^jurisdiction = $cs-m49#001
* ^copyright = "{{{year}}}"
// * ^date


