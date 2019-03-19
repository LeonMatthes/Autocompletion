keyboard
invalidateEditorMorph
	
	| theEditor |
	theEditor := self editor ifNil: [ ^self ].
	theEditor morph invalidRect: theEditor morph bounds.
