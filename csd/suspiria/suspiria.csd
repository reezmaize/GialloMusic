<CsoundSynthesizer>
<CsOptions>
-odac -F "../../Scores/suspiria.mid" -T
</CsOptions>
; ==============================================
<CsInstruments>

sr	=	44100
ksmps	=	1024
nchnls	=	2
0dbfs	=	2

seed 0

gasigL	init	0
gasigR	init	0

gkintensity, gkmagic, gkviolence, gkwitches, gkred init 0, 0, 0, 0, 0
ga1, ga2, ga3, ga4, ga5, ga6, ga7, ga8, gasig, averb init 0



#include	"vbap.orc"
#include	"midi.orc"
#include	"celeste.orc"
#include	"flute.orc"
#include	"cello.orc"
#include	"readk.orc"
#include	"oboe.orc"
#include	"contrabass.orc"

alwayson	"vbap"
alwayson	"read"
alwayson	"reverb"

instr reverb

	arevl, arevr, idel hrtfreverb gaverb, 10, 8, "Ears/CIPIC060l44100.dat", "Ears/CIPIC060r44100.dat"

	outs arevl*0.25, arevr*0.25
	clear gaverb

endin


</CsInstruments>
; ==============================================
<CsScore>
f 0 500
f 1 0 32768 10 1
</CsScore>
</CsoundSynthesizer>

