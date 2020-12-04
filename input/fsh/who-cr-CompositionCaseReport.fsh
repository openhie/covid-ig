Profile:    WhoCrComposition
Parent:     Composition
Description:    "WHO Case Reporting Composition"
Title:      "WHO Case Reporting Composition"

* insert PublisherContextProfile
* type = $LNC#95412-3
* category = $LNC#55751-2
// * subject only Reference(WhoCrPatient)
// * encounter
// * author
// * title
// * attester
// * custodian
// * relatesTo
// * event
* section 1..*
// outcome

// ** title
// ** code
// ** author
// ** focus
// ** text
// ** mode
// ** orderedBy
// ** entry
// ** emptyReason
// ** section


Instance:   WhoCrSampleComposition
InstanceOf: WhoCrComposition
Description:    "WHO Case Reporting Sample Composition"
Title:      "WHO Case Reporting Sample Composition"
Usage:      #example

* status = #final
* type = $LNC#95412-3
* category = $LNC#55751-2
// * subject = Reference(WhoCrSamplePatient)
* date = 2020-08-21
* author = Reference(WhoCrSamplePatient) // TODO: create actual author
* title = "Revised case report form for Confirmed Novel Coronavirus COVID-19"
// * encounter
// * author
// * title
// * attester
// * custodian
// * relatesTo
// * event
* section[0].title = "Patient Information"
* section[0].text.status  = #additional
* section[0].text.div = """
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<div xmlns="http://www.w3.org/1999/xhtml">Here is where we put content</div>
"""

//*outcome

// ** title
// ** code
// ** author
// ** focus
// ** text
// ** mode
// ** orderedBy
// ** entry
// ** emptyReason
// ** section