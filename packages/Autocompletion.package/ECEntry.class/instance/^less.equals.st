as yet unclassified
<= anECEntry 

	^ self lastUse = anECEntry lastUse
		ifTrue: [contents <= anECEntry contents]
		ifFalse: [self lastUse >= anECEntry lastUse]