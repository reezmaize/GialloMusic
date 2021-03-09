<CsoundSynthesizer>
<CsOptions>
-odac -F "../../Scores/suspiria.mid"
</CsOptions>
; ==============================================
<CsInstruments>

sr	=	48000
ksmps	=	1024
nchnls	=	2
0dbfs	=	2

seed 0

gasigL	init	0
gasigR	init	0

gkmagic, gkviolence, gkwitches, gkred init 0, 0, 0, 0


#include	"midi.orc"
#include	"celeste.orc"
#include	"flute.orc"
#include	"cello.orc"
#include	"drone.orc"
#include	"readk.orc"
#include	"oboe.orc"
#include	"contrabass.orc"

alwayson	"read"
alwayson	"reverb"
;alwayson	"drone"

instr reverb

	aL, aR	reverbsc	gasigL,	gasigR,	0.8,	1000
		outs	aL*1.7,	aR*1.7
	gasigL	=	0
	gasigR	=	0

endin

</CsInstruments>
; ==============================================
<CsScore>
f 0 200
f 1 0 32768 10 1

;i1 0 5 440 0.5

i "read" 97.835 100
;i "drone" 97.835 100
</CsScore>
</CsoundSynthesizer>

