accessing
temporariesFromContext
	^ executionContext
		ifNotNil: [:context | context tempNames
				withIndexCollect: [:each :index | ECLocalEntry
						contents: each
						type: (index <= executionContext numArgs
								ifTrue: [#patternArg]
								ifFalse: [#patternTempVar])]]
		ifNil: #()