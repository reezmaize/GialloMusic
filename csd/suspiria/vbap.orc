
vbaplsinit 2, 8, 0, 45, 90, 135, 180, 225, 270, 315    ;initialise vbap setup

instr vbap

	Sl = "Ears/hrtf-44100-left.dat"  	;Selecting Ears
	Sr = "Ears/hrtf-44100-right.dat"     

	al1, ar1 hrtfstat ga1, 0, 0, Sl, Sr	;Performing Spatialisation of virtual loudspeakers
	al2, ar2 hrtfstat ga2, 45, 0, Sl, Sr
	al3, ar3 hrtfstat ga3, 90, 0, Sl, Sr
	al4, ar4 hrtfstat ga4, 135, 0, Sl, Sr
	al5, ar5 hrtfstat ga5, 180, 0, Sl, Sr
	al6, ar6 hrtfstat ga6, 225, 0, Sl, Sr
	al7, ar7 hrtfstat ga7, 270, 0, Sl, Sr
	al8, ar8 hrtfstat ga8, 315, 0, Sl, Sr

		outs (al1+al2+al3+al4+al5+al6+al7+al8) * .5, (ar1+ar2+ar3+ar4+ar5+ar6+ar7+ar8) * .5

	gaverb = ((al1+al2+al3+al4+al5+al6+al7+al8)+(ar1+ar2+ar3+ar4+ar5+ar6+ar7+ar8))*.5

	clear ga1, ga2, ga3, ga4, ga5, ga6, ga7, ga8
 
endin
