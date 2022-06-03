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
