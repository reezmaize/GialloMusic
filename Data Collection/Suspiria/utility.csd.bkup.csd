<CsoundSynthesizer>
<CsOptions>
-odac	;No audio is required but real-time processing is required
-M2	;Recieve MIDI from all inputs
;-Qa
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

		;schedule 2, 0, 36000

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
	
	elseif (kstatus == 128 && kpause != 1) then
		kpause = 1
		turnoff2 2, 0, 0	

	elseif (kstatus == 128 && kpause == 1) then
		schedule 2, 0, 36000		

	endif

endin

instr 2
;	Writing values to files
	
	dumpk	gkintensity,	"susintensity.vals",	8,	1

	dumpk4	gkmagic, gkviolence, gkaudwitch, gkred, "suspiria.vals", 8, 1
	

endin

</CsInstruments>
; ==============================================
<CsScore>

i1	0	36000
i2 0 z


</CsScore>
</CsoundSynthesizer>

