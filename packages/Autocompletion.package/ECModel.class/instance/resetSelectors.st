private
resetSelectors
	selectors
		ifNil: [ selectors := OrderedCollection new: 500 ]
		ifNotNil: [ selectors reset ]