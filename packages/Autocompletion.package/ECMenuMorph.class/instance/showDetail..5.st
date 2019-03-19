actions
showDetail
	detailMorph ifNotNil: [ ^ self browse ].
	self itemsCount isZero ifTrue: [ ^ self ].
	detailMorph := ECDetailMorph new.
	self addMorph: detailMorph.
	self updateDetail