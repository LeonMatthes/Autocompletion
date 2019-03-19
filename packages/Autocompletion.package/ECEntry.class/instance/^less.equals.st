as yet unclassified
<= anECEntry 

	^ self lastUse = anECEntry lastUse
		ifTrue: [self contents <= anECEntry contents]
		ifFalse: [self lastUse >= anECEntry lastUse]