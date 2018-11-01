accessing
height
	| height |
	height := self visible
				ifTrue: [Display height - self bounds topLeft y / self itemHeight - 1 min: self class maxLength]
				ifFalse: [self class maxLength].
	height asInteger isZero
		ifTrue: [^ 1]
		ifFalse: [^ height].