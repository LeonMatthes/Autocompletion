menu morph
openMenuFor: anEditor

	| theMenu class executionContext |

	class := (self model respondsTo: #selectedClassOrMetaClass)
		ifTrue: [ self model selectedClassOrMetaClass ]
		ifFalse: [ nil ].
	executionContext := (self model respondsTo: #completionContext)
		ifTrue: [ self model completionContext ]
		ifFalse: [ nil ].

	self closeMenu.
	context := self contextClass 
		controller: self
		class: class
		source: anEditor text string
		position: anEditor startIndex - 1
		executionContext: executionContext.
	self editor: anEditor.
	theMenu := self defaultMenuMorphClass
		controller: self
		position: (anEditor selectionPosition: context completionToken).
	theMenu isClosed ifFalse: [ self menuMorph: theMenu ].