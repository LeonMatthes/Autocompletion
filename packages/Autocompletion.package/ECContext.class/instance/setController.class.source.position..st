initialize-release
setController: aECController class: aClass source: aString position: anInteger 
	controller := aECController.
	theClass := aClass.
	source := aString.
	position := anInteger.
	
	[self createRanges.
	self compute]
		on: self class allErrors
		do: [:exception | self model handleException: exception].
	self narrowWith: self completionToken.