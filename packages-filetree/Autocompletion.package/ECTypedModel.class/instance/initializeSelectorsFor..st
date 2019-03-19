private
initializeSelectorsFor: aClass 
	|excludedClasses|
	selectors reset.
	excludedClasses := Object withAllSuperclasses.
	((excludedClasses includes: aClass) or: expanded)
		ifTrue: [excludedClasses  := #()].
	
	selectors addAll: ((aClass allSelectorsForCompletionWithout: excludedClasses)
						collect: [:each | ECSelectorEntry contents: each type: #selector])