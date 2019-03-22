private
initializeSelectors

	self initializeSelectorsFor: clazz.
	super initializeSelectors.
	selectors addAll: (ECEntryHook additionalSelectorsTyped: self theClass).