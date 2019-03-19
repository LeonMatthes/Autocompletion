private-type-guessing
guessNewInstanceClass: aNumber

	| metaClass |
	metaClass := self guessTypeOf: aNumber - 1.
	^ metaClass
		ifNotNil: [
			metaClass isMeta
				ifTrue: [ metaClass theNonMetaClass ]
				ifFalse: [ metaClass ]].