actions
hideDetail
	self detailOpen ifFalse: [ ^ self ].
	self removeMorph: detailMorph.
	detailMorph abandon.
	detailMorph := nil.
	self changed