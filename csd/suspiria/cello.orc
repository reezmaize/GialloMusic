

instr cello

	idel	random	0, 0.05			;Time for delayed signal

	inote	notnum
	iamp	veloc	0, 0.8
	ifreq	=	cpsmidinn(inote)
	ipan	random	135,	225

	kamp	madsr	0.01,	0.6,	0.3,	4

	asig	pluck	kamp*iamp, ifreq, ifreq, 1, 6 
	asig2	pluck	kamp*(iamp*0.5), ifreq*1.970, ifreq*2, 0, 1 
	
	asig	=	asig + asig2

	asig	lpf18	asig, 3000*kamp, 0.2,	0.3

	asig	delay	asig, idel		;Delaying output to create human error

	a1, a2, a3, a4, a5, a6, a7, a8 vbap asig*0.75, ipan ;spatialising with vbap

	
	ga1 = ga1 + a1		;outputting vbap signal to global vbap
	ga2 = ga2 + a2
	ga3 = ga3 + a3
	ga4 = ga4 + a4
	ga5 = ga5 + a5
	ga6 = ga6 + a6
	ga7 = ga7 + a7
	ga8 = ga8 + a8



	gasigL	=	asig*0.75
	gasigR	=	asig*0.75


endin
