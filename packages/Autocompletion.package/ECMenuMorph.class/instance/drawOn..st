drawing
drawOn: aCanvas 
	| rectangle model |
	super drawOn: aCanvas.
	self drawTitleOn: aCanvas.
	rectangle := self bounds copy.
	rectangle bottom: rectangle top + self itemHeight.
	rectangle := rectangle left: rectangle left + 20.
	model := context model.
	self extent: self extent.
	self drawArrowsOn: aCanvas.
	model notEmpty
		ifTrue: [self drawEntriesOn: aCanvas in: rectangle].
	"tweak rectangle to display message"
	rectangle := rectangle top: (self bounds bottom - self class messageHeight).
	self drawMessageOn: aCanvas in: rectangle