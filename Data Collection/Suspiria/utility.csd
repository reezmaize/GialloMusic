<CsoundSynthesizer>
<CsOptions>
-odac	;No audio is required but real-time processing is required
-M2	;Recieve MIDI from all inputs
</CsOptions>
; ==============================================
<CsInstruments>

ksmps	=	32
massign 0, 1	;Assigning MIDI input to instument 1
	gkintensity	init	0
	gkmagic		init	0
	gkviolence	init	0
	gkaudwitch	init	0
	gkred		init	0
instr 1	
	kpause init 0
	kstatus init 0
	kchan init 0
	kdata1 init 0
	kdata2 init 0

;	Getting input from the MIDI Controller
	kstatus, kchan,	kdata1,	kdata2	midiin

;	Parsing MIDI data
	if (kstatus == 176 && kdata1 == 21) then
		gkintensity = kdata2			;Overall intensity
	
	elseif (kstatus == 176 && kdata1 == 22) then
		gkmagic = kdata2				;Use of magic

	elseif (kstatus == 176 && kdata1 == 23) then
		gkviolence = kdata2			;Violence-o-meter (good for murder scenes)

	elseif (kstatus == 176 && kdata1 == 24) then
		gkaudwitch = kdata2			;Audience's awareness of witches
	
	elseif (kstatus == 176 && kdata1 == 25) then
		gkred = kdata2				;Presence of the colour red
	endif	

	dumpk	gkintensity,	"susintensity.vals",	7,	1
	dumpk4	gkmagic, gkviolence, gkaudwitch, gkred, "suspiria.vals", 7, 1
endin
</CsInstruments>
; ==============================================
<CsScore>
i1	0	36000
</CsScore>
</CsoundSynthesizer>
