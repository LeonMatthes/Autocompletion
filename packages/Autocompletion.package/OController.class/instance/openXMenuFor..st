menu morph
openXMenuFor: anEditor 
	| theMenu |
	self closeMenu.
	context := menuMorph 
		ifNotNil: [menuMorph context] 
		ifNil: [self contextClass 
				controller: self
				class: self model selectedClassOrMetaClass
				source: anEditor text string
				position: anEditor startIndex - 1].
	
	self editor: anEditor.
	self expand.
	theMenu := self defaultMenuMorphClass controller: self
				position: (anEditor selectionPosition: context completionToken).
	theMenu isClosed ifFalse: [menuMorph := theMenu].
	menuMorph moveDown; moveDown. 
	