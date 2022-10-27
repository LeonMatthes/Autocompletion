*Autocompletion
wantsAutocompletion
	"Do I want to be decorated with an Autocompletion menu?"
	
	"Heuristic: Most models hold autocompletable contents if and only if they opt-in to syntax highlighting. Try to reuse this information if a styler is available."
	| styler stylerClass |
	stylerClass := (Smalltalk classNamed: #TextStyler) ">= Squeak 6.0"
		ifNotNil: [:registry | registry defaultOrNil]
		ifNil: [Smalltalk classNamed: #SHTextStylerST80 "optional dependency on Shout"].
	stylerClass ifNil:
		["fallback"
		^ true].
	
	styler := stylerClass new.
	^ [self aboutToStyle: styler requestor: nil]
		ifError: [:ex | Transcript showln: ex. false]