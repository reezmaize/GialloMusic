instr oboe

	inote	notnum
	iamp	veloc	0, 0.8
	ifreq	=	cpsmidinn(inote)
	ipan	random	90, 180

	kamp	madsr	0.05,	0.85,	iamp, 0.5

	asig1	vco2	kamp*iamp,	ifreq,	0
	asig2	vco2	kamp*iamp,	ifreq*2,0
	asig	=	asig1	*	asig2

	asig	butbp	asig,	(ifreq*2)*kamp, 150

	
	a1, a2, a3, a4, a5, a6, a7, a8 vbap asig*2, ipan*gkintensity ;spatialising with vbap

	
	ga1 = ga1 + a1		;outputting vbap signal to global vbap
	ga2 = ga2 + a2
	ga3 = ga3 + a3
	ga4 = ga4 + a4
	ga5 = ga5 + a5
	ga6 = ga6 + a6
	ga7 = ga7 + a7
	ga8 = ga8 + a8

endin
