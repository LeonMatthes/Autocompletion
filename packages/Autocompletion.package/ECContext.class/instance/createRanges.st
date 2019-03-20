private
createRanges
	| parser |
	parser := SHParserST80 new.
	parser parseAMethod: controller allowOverriding.
	ranges := parser 
				rangesIn: source
				classOrMetaClass: theClass
				workspace: controller workspace
				environment: nil.
	ranges := ranges select: [:each | each type ~= #comment]