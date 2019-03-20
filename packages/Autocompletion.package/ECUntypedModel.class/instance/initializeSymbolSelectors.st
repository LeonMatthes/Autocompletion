private
initializeSymbolSelectors

	ECSymbols 
		contains: narrowString
		caseSensitive: ECPreferences caseSensitive
		exclude: self selectorsAsSymbols
		do: 
			[:each | 
			(includeVariables or: [each first isLowercase]) ifTrue: 
				[ selectors add: (ECSelectorEntry 
						contents: each
						type: #selector).
				selectors size > 500 ifTrue: [ ^ self ]]].