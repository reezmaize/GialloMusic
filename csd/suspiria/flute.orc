
instr flute

	inote	notnum
	iamp	veloc	0, 0.8
	ifreq	=	cpsmidinn(inote)
	ipan	random	260,	350
	kpw	=	gkred			;Assigning red value to pulse width

	kamp	madsr	0.075,	0.5,	0.5,	0.6
	
	asig	vco2	iamp*kamp,	ifreq, 4, kpw

	a1, a2, a3, a4, a5, a6, a7, a8 vbap asig*0.25, ipan 

	
	ga1 = ga1 + a1
	ga2 = ga2 + a2
	ga3 = ga3 + a3
	ga4 = ga4 + a4
	ga5 = ga5 + a5
	ga6 = ga6 + a6
	ga7 = ga7 + a7
	ga8 = ga8 + a8


	gasigL	=	asig
	gasigR	=	asig

endin
