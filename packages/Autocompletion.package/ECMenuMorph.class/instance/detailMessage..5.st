drawing
detailMessage
	^ detailMorph
		ifNil: [self helpText, ' | ctrl + -> open detail']
		ifNotNil: [self helpText, ' | ctrl + <- close detail']