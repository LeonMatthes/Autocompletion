accessing
initialize
	| childBounds |
	super initialize.
	self borderWidth: 1.
	self borderColor: Color gray.
	childBounds := self contentBounds.
	label := StringMorph contents: '' font: ECMenuMorph messageFont.
	label 
		bounds: childBounds;
		color: self class fontColor.
	self addMorph: label.
	title := StringMorph contents: '' font: ECMenuMorph titleFont.
	title 
		bounds: self titleBounds;
		color: self class fontColor.
	self addMorph: title.
	description := TextMorph new.
	description 
		autoFit: false;
		bounds: self descriptionBounds;
		borderWidth: 0;
		color: self class fontColor.
	self addMorph: description