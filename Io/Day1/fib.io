# getfib := method(n,
	
fib := method(n,
	
	i := 2 
	p1 := 1
	p2 := 1
	f := 1
	while(i < n, 
		f = p1 + p2
		p2 = p1
		p1 = f
		i = i + 1
	)
	f println
	
)

fib(1)
fib(2)
fib(3)
fib(4)
fib(5)
fib(6)
fib(7)
fib(8)
fib(9)
fib(10)
fib(11)
fib(12)
fib(13)
fib(14)
