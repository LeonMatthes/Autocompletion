drawing
drawMessageOn: aCanvas in: rectangle 
	self hasMessage ifFalse:[^self].
	context model isEmpty 
		ifFalse:[
			aCanvas
				line: rectangle topLeft + (0 @ 1)
				to: rectangle topRight + (0 @ 1)
				color: self class fontColor]. 
	self drawModelMessageOn: aCanvas in:rectangle.
	self drawPageCountMessageOn: aCanvas in: rectangle.