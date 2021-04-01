
instr celeste

	inote	notnum
	iamp	veloc	0, 0.8
	ipan	random	25,	75	;Panning for vbap (range is 0-360)
	kang	init	0

	kamp	madsr	0.01,	0.6,	0.1,	6
	kfreq	=	cpsmidinn(inote)

	asig	fmbell	kamp*iamp,	kfreq,	5,	16,	0.005,	6, 1,1,1,1,1,6

	
	a1, a2, a3, a4, a5, a6, a7, a8 vbap asig*0.02, ipan ;spatialising with vbap

	
	ga1 = ga1 + a1		;outputting vbap signal to global vbap
	ga2 = ga2 + a2
	ga3 = ga3 + a3
	ga4 = ga4 + a4
	ga5 = ga5 + a5
	ga6 = ga6 + a6
	ga7 = ga7 + a7
	ga8 = ga8 + a8


	gasigL	=	asig*0.02	;send to reverb
	gasigR	=	asig*0.02
	
endin
