menu morph
openMenuFor: anEditor

	| theMenu class |

	"Now I check if the method exist, it prevent for crashing each time a key is pressed"
	(self model respondsTo: #selectedClassOrMetaClass)
		ifTrue: [ class := self model selectedClassOrMetaClass ]
		ifFalse: [ class := nil ].
		
	self closeMenu.
	context := self contextClass 
		controller: self
		class: class
		source: anEditor text string
		position: anEditor startIndex - 1.
	self editor: anEditor.
	theMenu := self defaultMenuMorphClass
		controller: self
		position: (anEditor selectionPosition: context completionToken).
	theMenu isClosed ifFalse: [ self currentMenuMorph: theMenu ].