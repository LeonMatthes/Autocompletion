drawing
drawOn: aCanvas in: aRectangle

	aCanvas
		drawString: self contentsAsSymbol asString
		in: (aRectangle insetBy: 1)
		font: self selectFont
		color: self selectColor.