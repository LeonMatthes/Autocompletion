completion
codeCompletionAround: aBlock textMorph: aTextMorph keyStroke: evt
	| completionAllowed editor stringHolder |
	
	editor := aTextMorph editor.
	stringHolder := editor ifNotNil: [editor model].

	completionAllowed := ECPreferences enabled and:[ ECController allowModel: stringHolder ].
	completionAllowed
		ifTrue: [(stringHolder completionController handleKeystrokeBefore: evt editor: editor)
				ifTrue: [^ self]].
	aBlock value.
	"sends to keyStroke event handler, if any"
	"Narrow the completion with any of the keys"
	completionAllowed
		ifTrue: [stringHolder completionController handleKeystrokeAfter: evt editor: editor]