public
methodRefs
	| theClass selectors |
	theClass := receiverClass classThatDefinesInstanceVariable: variableName.
	theClass ifNil: [ ^ nil ].
	selectors := theClass whichSelectorsStoreInto: variableName.
	^ selectors collect: [ :each | MethodReference new setStandardClass: theClass methodSymbol: each ]