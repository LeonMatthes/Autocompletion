drawing
drawEntriesOn: aCanvas in: aRectangle

	| rectangle |
	rectangle := aRectangle.
	self firstVisible
		to: self lastVisible
		do: [:index | | entryRectangle |
			entryRectangle := rectangle withBottom: rectangle top + self class itemHeight.
			index = self selected
				ifTrue: [
					aCanvas fillRectangle: entryRectangle color: self scrollColor.
					self detailPosition: entryRectangle topRight - (1@0)].
			(self model entries at: index) 
				drawOn: (ClippingCanvas canvas: aCanvas clipRect: entryRectangle)
				in: rectangle.
			rectangle := self prepareRectForNextRow: rectangle].