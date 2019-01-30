private
initializeSelectors
	self resetSelectors.
	includeSelectors ifFalse: 
		[ Smalltalk environment keysDo: 
			[ :each | 
			selectors add: (ECGlobalEntry 
					contents: each
					type: #globalVar) ].
		^ self ].
	narrowString ifEmpty: [ ^ self ].
	ECSymbols 
		contains: narrowString
		caseSensitive: ECPreferences caseSensitive
		do: 
			[ :each | 
			(includeVariables or: [ each first isLowercase ]) ifTrue: 
				[ selectors add: (ECSelectorEntry 
						contents: each
						type: #selector).
				selectors size > 500 ifTrue: [ ^ self ] ] ]