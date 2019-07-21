initialize-release
setController: aECController class: aClass source: aString position: anInteger executionContext: aContext
	controller := aECController.
	theClass := aClass.
	source := aString.
	position := anInteger.
	executionContext := aContext.
	self createRanges.
	self compute