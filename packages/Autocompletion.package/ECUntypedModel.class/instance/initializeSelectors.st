private
initializeSelectors

	self resetSelectors.
	super initializeSelectors.
	(includeSelectors and: [ECPreferences includeSelectors])
		ifFalse: [^ self initializeGlobalsSelectors ].

	narrowString ifEmpty: [ ^ self ].
	
	self initializeSymbolSelectors.