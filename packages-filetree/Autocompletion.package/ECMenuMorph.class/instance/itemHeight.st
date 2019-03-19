accessing
itemHeight
	"cached to minimise recalculation"
	^ itemHeight ifNil: [itemHeight := self class itemHeight]