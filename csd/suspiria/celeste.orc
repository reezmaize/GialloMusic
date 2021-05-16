instr celeste

	idel	random, 0, 0.03		;Generating note start delay time
	kdepth	=	gkmagic

	inote	notnum			;Receiving MIDI note value from MIDI message
	iamp	veloc	0, 0.8		;Receiving MIDI velocity value
	ipan	random	25,	75	;Panning for vbap (range is 0-360)
	kang	init	0

	kamp	madsr	0.01,	0.6,	0.1,	6	;Amplitude Envelope
	kfreq	=	cpsmidinn(inote)		;Coverting MIDI note number to cycles-per-second

	asig1	fmbell	(kamp*gkwitches)*iamp,	kfreq,	40*kdepth,	100,	kdepth,	6*gkintensity, 1,1,1,1,1,6	;Bell Synthesis
	asig2	fmmetal	(kamp*gkwitches)*iamp,	kfreq*1.1, 4,	70,	kdepth,	6, 1,1,1,1,1				;Metal Synthesis
	asig 	=	asig1 + (asig2)

	asig	delay	asig, idel	;delaying audio signal slightly
	
	a1, a2, a3, a4, a5, a6, a7, a8 vbap asig*0.005, ipan*gkintensity ;spatialising with vbap

	
	ga1 = ga1 + a1		;outputting vbap signal to global vbap
	ga2 = ga2 + a2
	ga3 = ga3 + a3
	ga4 = ga4 + a4
	ga5 = ga5 + a5
	ga6 = ga6 + a6
	ga7 = ga7 + a7
	ga8 = ga8 + a8

endin
