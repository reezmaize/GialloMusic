<CsoundSynthesizer>
<CsOptions>
-odac 				;Selects DAC as output
-F "../../Scores/suspiria.mid"	;Opens 'suspiria.mid' and plays it
</CsOptions>
; ==============================================
<CsInstruments>

sr	=	44100
ksmps	=	1024
nchnls	=	2
0dbfs	=	1.3

seed 0

gkintensity, gkmagic, gkviolence, gkwitches, gkred init 0, 0, 0, 0, 0 	;initialising global variables for storing data read from val files
ga1, ga2, ga3, ga4, ga5, ga6, ga7, ga8, gasig, averb init 0		;initialising global variablss for reverb & octophonic setup

					;Including .orc files

#include	"vbap.orc"
#include	"midi.orc"
#include	"celeste.orc"
#include	"flute.orc"
#include	"cello.orc"
#include	"readk.orc"
#include	"oboe.orc"
#include	"contrabass.orc"

					;Initialising instruments that should be permanently on
alwayson	"vbap"
alwayson	"read"
alwayson	"reverb"

instr reverb				;Global reverb instrument

	arevl, arevr, idel hrtfreverb gaverb, 10, 8, "Ears/CIPIC060l44100.dat", "Ears/CIPIC060r44100.dat"

	outs arevl*0.25, arevr*0.25
	clear gaverb

endin


</CsInstruments>
; ==============================================
<CsScore>
f 0 490			;Makes csound run for 490 seconds
f 1 0 32768 10 1	;Sine Wave
</CsScore>
</CsoundSynthesizer>

