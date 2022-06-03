// ints
123456789
000111222333
0xabcdef
0XFACE
0xDEADBEEF
0b0110101101

/* floats */
.69
69.
3.1415692
1e-6
123456789.987654321e123456789
.12e3
12e3

/*
	chars
*/
'a
'b
'x
'\\
''
'%
'$
'\x1B
'\uFefF
'\UdeadB33F
'\q


/* strings
// */
"\"strings\" are pretty cool"
`but \`{fstrings}\` are even cooler`
```multiline strings
are also\```
pretty damn cool```
"stringg\\" 100
`another\{\\` 200
```and again\\``` 300

// /* time to break it
'w'h'a't' 's'h'o'u'l'd' 't'h'i's' 'd'o'?



// bf interpreter:
let Str code = getLine()
let Int ptr  = 0 
let Chr[1000] mem

for (code) $ (c) {
	if c = '> {
		ptr += 1
	}
	
	else if c = '< {
		ptr -= 1
		if ptr < 0 {ptr = mem.length - 1}
	}
	
	else if c = '+ {
		mem[ptr] += 1
	}
	
	else if c = '- {
		mem[ptr] -= 1
	}
	
	else if c = '. {
		putChr(mem[ptr]) 
	}
	
	else if c = ', {
		mem[ptr] = getChr()
	}
	
	else if (c = '[) and (mem[ptr] = 0) {
		let Int depth = 1
		let Int j = i
		while {depth ~ 0} {
			j += 1
			if code[j] = '[ {depth += 1}
			else if code[j] = '] {depth -= 1}
		}
		ptr = j
	}
	else if (c = ']) and (mem[ptr] ~ 0) {
		let Int depth = 1
		let Int j = i
		while {depth ~ 0} {
			j -= 1
			if code[j] = '[ {depth += 1}
			else if code[j] = '] {depth -= 1}
		}
		ptr = j
	}
}