

instr cello

	inote	notnum
	iamp	ampmidi 0.5
	ifreq	=	cpsmidinn(inote)
	ipan	random	0.4,	0.6

	kamp	madsr	0.07,	0.1,	0.8,	0.6

	asig	wgbow kamp, ifreq, iamp*3, 0.025, 2, 0.1
	
	aL, aR	pan2	asig,	ipan
		outs	aL,	aR

endin
