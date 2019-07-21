instance creation
controller: aECController class: aClass source: aString position: anInteger executionContext: aContext
	^ self basicNew initialize
		setController: aECController
		class: aClass
		source: aString
		position: anInteger
		executionContext: aContext