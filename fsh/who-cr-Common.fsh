Alias: $LNC = http://loinc.org
Alias: $CIEL = https://www.openconceptlab.org/orgs/CIEL/sources/CIEL/concepts
Alias: $ICD10 = https://icd.who.int/browse10
Alias: $ICD11 = https://icd.who.int/browse11
Alias: $RXNORM = http://www.nlm.nih.gov/research/umls/rxnorm
Alias: $SCT = http://snomed.info/sct


RuleSet: PublisherContext
* status = #draft
* experimental = true
* publisher = "OpenHIE"
* contact[0].name = "Elliot Silver"
* contact[0].telecom[0].system = #email
* contact[0].telecom[0].value = "elliot@argentixinfo.com"
* contact[0].telecom[0].use = #work
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* copyright = "{{{year}}}"
// * date

RuleSet: PublisherContextProfile
* ^status = #draft
* ^experimental = true
* ^publisher = "OpenHIE"
* ^contact[0].name = "Elliot Silver"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "elliot@argentixinfo.com"
* ^contact[0].telecom[0].use = #work
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* ^copyright = "{{{year}}}"
// * ^date


