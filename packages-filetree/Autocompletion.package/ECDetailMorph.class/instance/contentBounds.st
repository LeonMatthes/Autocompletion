drawing
contentBounds
	| factor rectangle |
	factor := ECMenuMorph messageHeight.
	rectangle := self bounds top: self bounds top + 3.
	rectangle := rectangle left: rectangle left + (factor * 2.0).
	rectangle := rectangle bottom: rectangle bottom - factor. 
	^ rectangle