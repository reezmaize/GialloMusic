
instr celeste

	inote	notnum
	iamp	veloc	0, 0.8
	ipan	random	0,	1

	kamp	madsr	0.01,	0.6,	0.1,	6
	kfreq	=	cpsmidinn(inote)

	asig	fmbell	kamp*iamp,	kfreq,	5,	16,	0.005,	6, 1,1,1,1,1,6

	aL, aR	pan2	asig,	ipan

		outs	aL*0.05,	aR*0.05

	gasigL	=	aL*0.05
	gasigR	=	aR*0.05
	
endin
