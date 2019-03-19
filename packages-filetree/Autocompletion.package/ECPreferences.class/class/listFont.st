accessing
listFont

	Smalltalk at: #StandardFonts ifPresent: [ :standardFonts |
		"Pharo"
		^standardFonts listFont ].
	Smalltalk at: #Preferences ifPresent: [ :preferences |
		"Squeak"
		^preferences standardListFont ]