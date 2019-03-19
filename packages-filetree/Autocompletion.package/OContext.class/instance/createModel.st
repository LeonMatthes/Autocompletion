model creation
createModel
	| mdl |		
	mdl := OModel
		class: theClass
		temporaries: self temporaries
		additionals: controller additionals
		variables: variables
		selectors: selectors.
	controller expanded ifTrue: [mdl expand].
	^ mdl 