comparing
<= anECEntry 

	^ self lastUse = anECEntry lastUse
		ifTrue: [self contents size <= anECEntry contents size]
		ifFalse: [self lastUse >= anECEntry lastUse]