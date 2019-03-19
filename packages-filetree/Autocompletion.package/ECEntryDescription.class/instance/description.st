accessing
description
	
	^ (description isNil or: [description isEmpty])
		ifTrue:['-']
		ifFalse: [description]