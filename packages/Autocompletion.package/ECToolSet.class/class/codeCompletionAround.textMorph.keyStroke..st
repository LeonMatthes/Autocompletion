completion
codeCompletionAround: aBlock textMorph: aTextMorph keyStroke: evt
	| completionAllowed editor stringHolder controller |
	
	editor := aTextMorph editor.
	stringHolder := editor ifNotNil: [editor model].

	completionAllowed := ECPreferences enabled and:[ ECController allowModel: stringHolder ].
	completionAllowed
		ifTrue: [
			"Save the controller to make sure it is the same before and after the keystroke.
			This is important because it is legal to return nil when asked for the completionController,
			so a model may choose to disable Autocompletion in aBlock and therefore return nil afterwards."
			controller := stringHolder completionController.
			(controller handleKeystrokeBefore: evt editor: editor)
				ifTrue: [aTextMorph updateFromParagraph. ^ self]].
	aBlock value.
	"sends to keyStroke event handler, if any"
	"Narrow the completion with any of the keys"
	completionAllowed
		ifTrue: [controller handleKeystrokeAfter: evt editor: editor]