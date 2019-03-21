private
initializeSelectors

	self initializeSelectorsFor: clazz.
	super initializeSelectors.
	selectors addAll: (ECEntryHook additionalSelectorsFor: self theClass).