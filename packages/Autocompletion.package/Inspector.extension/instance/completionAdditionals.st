*Autocompletion
completionAdditionals

	^ self doItContext ifNotNil: [:context |
		context tempNames withIndexCollect: [:each :index |
			ECLocalEntry
				contents: each
				type: (index <= context numArgs ifTrue: [#patternArg] ifFalse: [#patternTempVar])]]