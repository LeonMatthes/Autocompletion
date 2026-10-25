*Autocompletion
completionAdditionals

	^ self doItContext ifNotNil: [:ctxt |
		(ctxt tempNames withIndexCollect: [:each :index |
			ECLocalEntry
				contents: each
				type: (index <= ctxt numArgs ifTrue: [#patternArg] ifFalse: [#patternTempVar])])
					copyWithFirst:
						(ECLocalEntry
							contents: #ThisContext
							type: #patternArg)]