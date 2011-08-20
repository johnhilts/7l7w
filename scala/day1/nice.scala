class Person(val name: String)

trait Nice {
	def greet() = println("Howdily doodily.")
}

class Character(override val name: String) extends Person(name) with Nice

val flanders = new Character("Ned")
flanders.greet

// a scala trait is similar to a Java interface with a partial-class implementation.
// in ruby terms, it's apparently the equivalent of "mixin implemented with modules"
