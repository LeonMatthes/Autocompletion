initialization
createTitle
	| transformationMorph titleString |
	titleString := context model title.
	titleString
		ifNil: [^ self].
	transformationMorph := TransformationMorph new.
	self addMorph: transformationMorph.
	titleStringMorph := StringMorph new.
	titleStringMorph font: self class titleFont.
	transformationMorph addMorph: titleStringMorph.
	transformationMorph rotationDegrees: -90.0.
	transformationMorph topLeft: (self topLeft + (0@12)).
	titleStringMorph 
		contents: titleString;
		color: self class fontColor.