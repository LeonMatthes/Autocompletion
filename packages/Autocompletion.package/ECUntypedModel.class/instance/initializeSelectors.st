private
initializeSelectors

	self resetSelectors.
	super initializeSelectors.
	selectors addAll: (ECEntryHook additionalSelectorsUntyped: clazz).
	
	(includeSelectors and: [ECPreferences includeSelectors])
		ifFalse: [^ self initializeGlobalsSelectors ].

	narrowString ifEmpty: [ ^ self ].
	
	self initializeSymbolSelectors.