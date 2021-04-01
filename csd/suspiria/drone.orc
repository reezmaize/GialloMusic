

instr drone
	
	kfreq	=	gkred

	if (kfreq == 0) then
		kfreq = 1
	endif

	a1	vco2	0.05, kfreq*16, 12
	a2	vco2	0.1, kfreq*32, 10

	asig	=	a1 + a2
	
	asig	lpf18	asig, 3000, 0.4, 0.2

	kpan	jspline	1, 0.01, 1

	a1, a2	pan2	asig, kpan

		outs	a1,	a2

	gasigL	=	a1
	gasigR	=	a2

endin
