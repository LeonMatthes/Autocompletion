drawing
drawArrowsOn: aCanvas
	
	self firstVisible > 1
		ifTrue: [self drawTopScrollArrowOn: aCanvas].
	self lastVisible ~= self itemsCount
		ifTrue: [self drawBottomScrollArrowOn: aCanvas].