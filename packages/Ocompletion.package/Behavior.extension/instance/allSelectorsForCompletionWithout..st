*Ocompletion
allSelectorsForCompletionWithout: behaviors
	| selectors |
	selectors := IdentitySet new.
	self withAllSuperclassesDo: [:class | (behaviors includes: class)
											ifFalse: [selectors addAll: class selectors.]].
	^ selectors asOrderedCollection 