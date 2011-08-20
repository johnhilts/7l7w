object TrueRing {
	def rule = println("To rule them all")
}
// this creates a singleton object and is the strategy used for creating class methods
// you can also have a "class TrueRing" and they won't clash

TrueRing.rule

