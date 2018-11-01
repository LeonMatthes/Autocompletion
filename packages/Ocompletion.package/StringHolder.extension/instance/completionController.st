*Ocompletion
completionController
	
	| controller |
	controller := self dependents 
		detect: [ :each | each isKindOf:  ECController ]
		ifNone: [ 
			"This is just the migration code from the old #actionMap hack."
			(self triggerEvent: #getCompletionController) ifNotNil: [ :theController |
				self addDependent: theController ] ].
	^controller ifNil: [ self initializeCompletionController ]
	