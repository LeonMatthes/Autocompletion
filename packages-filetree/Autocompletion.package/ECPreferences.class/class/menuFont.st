accessing
menuFont

	Smalltalk at: #StandardFonts ifPresent: [ :standardFonts |
		"Pharo"
		^standardFonts menuFont ].
	Smalltalk at: #Preferences ifPresent: [ :preferences |
		"Squeak"
		^preferences standardMenuFont ]