drawing
drawOn: aCanvas in: aRectangle

	aCanvas
		drawString: self contents
		in: (aRectangle insetBy: 1)
		font: self selectFont
		color: self selectColor.