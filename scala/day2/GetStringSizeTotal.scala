// create a list of strings
val list = List("one", "two", "three", "four", "five")
println(list)
val sum = (0 /: list) {(sum, i) => var l = i.length; print(i + " length = " + l + " "); sum + l}
println
println("Total = " + sum)

