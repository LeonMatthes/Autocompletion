private
browseWith: anECContext
	^ self
		findMethodWith: anECContext
		do: [ :class :method | 
			Browser fullOnClass: class selector: method selector.
			true ]
		ifAbsent: [ :selector | 
			(SystemBrowser default name beginsWith: 'OB')
				ifTrue: [OBImplementorsBrowser openRoot: (OBSelectorNode on: selector).]
				ifFalse: [self systemNavigation browseAllImplementorsOf: selector].
				true ]