drawing
drawMessageOn: aCanvas 
	|  rectangle width browseMessage |
	rectangle := self bounds top: self bounds bottom - ECMenuMorph messageHeight.
	rectangle := rectangle left: self contentBounds left.
	aCanvas
		line: rectangle topLeft
		to: rectangle topRight - (1@0)
		color: Color gray.
	rectangle := rectangle insetBy: 1.
	aCanvas
		drawString: '<- close detail'
		in: rectangle
		font: ECMenuMorph messageFont
		color: Color gray.
	browseMessage := 'browse ->'.
	width := ECMenuMorph messageFont widthOfString: browseMessage .
	aCanvas
		drawString: browseMessage
		in: (rectangle left: rectangle right - width)
		font: ECMenuMorph messageFont
		color: Color gray