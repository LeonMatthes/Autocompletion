accessing
selected: aNumber 
	"Set the value of selected"
	self model notEmpty ifTrue: 
		[ ((1 to: self itemsCount) includes: aNumber) ifTrue: [ aNumber ~= selected ifTrue: [ selected := aNumber ] ] ]