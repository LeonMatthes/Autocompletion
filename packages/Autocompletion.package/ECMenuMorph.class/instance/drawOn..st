drawing
drawOn: aCanvas 
	
	| rectangle |
	super drawOn: aCanvas.
	self drawTitleOn: aCanvas.
	rectangle := self bounds copy.
	rectangle := rectangle left: rectangle left + 20.
	self extent: self extent.
	self drawArrowsOn: aCanvas.
	context model notEmpty
		ifTrue: [self drawEntriesOn: aCanvas in: rectangle].
	"tweak rectangle to display message"
	rectangle := rectangle top: (self bounds bottom - self class messageHeight).
	self drawMessageOn: aCanvas in: rectangle