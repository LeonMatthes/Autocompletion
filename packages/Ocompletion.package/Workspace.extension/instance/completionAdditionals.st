*Ocompletion
completionAdditionals
	
	bindings ifNil: [ ^#() ].
	^bindings keys asArray replace: [ :each | 
		ECLocalEntry 
			contents: each
			type: #local ]