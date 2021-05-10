instr contrabass

inote	notnum
	iamp	veloc	0, 0.6
	ifreq	=	cpsmidinn(inote)
	
	kamp	madsr	0.2,	0.6,	0.5,	0.5

	asig1	vco2	kamp*iamp,	ifreq, 12
	asig2	oscil	kamp*iamp*0.75, ifreq*0.5
	asig	=	asig1 + asig2
	asig	lpf18	asig,	ifreq*kamp,	0.35, 0.1
	

	a1, a2, a3, a4, a5, a6, a7, a8 vbap asig*0.75, 0 ;spatialising with vbap	(always centre panned)

	
	ga1 = ga1 + a1		;outputting vbap signal to global vbap
	ga2 = ga2 + a2
	ga3 = ga3 + a3
	ga4 = ga4 + a4
	ga5 = ga5 + a5
	ga6 = ga6 + a6
	ga7 = ga7 + a7
	ga8 = ga8 + a8


endin
