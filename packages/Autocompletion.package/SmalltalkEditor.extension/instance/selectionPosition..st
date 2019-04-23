*Autocompletion-SqueakCompatibility
selectionPosition: aString

	| startIndex |
	startIndex := self startIndex.
	^ [ | bottomLeft index |
		index := startIndex - aString size.
		self selectInvisiblyFrom: index to: index - 1.
		bottomLeft := paragraph selectionRects first bottomLeft.
		self morph pointInWorld: bottomLeft ]
			ensure: [ self selectInvisiblyFrom: startIndex to: startIndex - 1 ]