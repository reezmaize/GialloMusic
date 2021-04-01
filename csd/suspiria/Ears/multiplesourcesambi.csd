;emerging tech.: how to use multiple sources and one spatial process...send spatial data!

<CsoundSynthesizer>
<CsOptions>

</CsOptions>
<CsInstruments>

0dbfs = 1
nchnls = 2

#include "binmix.udo"

ga1 init 0
ga2 init 0
ga3 init 0
ga4 init 0

instr 1            

asig diskin "sample.wav", 1, 0, 1
asig linen asig, .1, p3, .1

kang line 0, p3, 360

aw, ax, ay, az bformenc1 asig, kang, 0
a1, a2, a3, a4  bformdec1 2, aw, ax, ay, az

ga1 = ga1 + a1
ga2 = ga2 + a2
ga3 = ga3 + a3
ga4 = ga4 + a4


endin

instr 2            

ifr = p4
iendang = p5

asig buzz .5, ifr, 10, 1
asig linen asig, .1, p3, .1

kang line 0, p3, iendang

aw, ax, ay, az bformenc1 asig, kang, 0
a1, a2, a3, a4  bformdec1 2, aw, ax, ay, az

ga1 = ga1 + a1
ga2 = ga2 + a2
ga3 = ga3 + a3
ga4 = ga4 + a4


endin

instr 100


Sl = "hrtf-44100-left.dat"   ;"CIPIC060l44100.dat"  
Sr = "hrtf-44100-right.dat"  ;"CIPIC060r44100.dat"    

al1, ar1 hrtfstat ga1, -45, 0, Sl, Sr
al2, ar2 hrtfstat ga2, -135, 0, Sl, Sr
al3, ar3 hrtfstat ga3, 135, 0, Sl, Sr
al4, ar4 hrtfstat ga4, 45, 0, Sl, Sr

outs (al1+al2+al3+al4) * .5, (ar1+ar2+ar3+ar4) * .5


;or use UDO from class

/*
ains[] init 4
iangs[] init 4

ains[0] = ga1
ains[1] = ga2
ains[2] = ga3
ains[3] = ga4


iangs[0] = -45
iangs[1] = -135
iangs[2] = 135
iangs[3] = 45

al, ar binmix ains, iangs
outs al*.5, ar*.5
*/

ga1 = 0
ga2 = 0
ga3 = 0
ga4 = 0


endin


</CsInstruments>
<CsScore>

f1 0 1024 10 1

;i1 0 10
i2 0 7 220 360

i2 2 6 440 -360
 
i100 0 15

</CsScore>
</CsoundSynthesizer>
