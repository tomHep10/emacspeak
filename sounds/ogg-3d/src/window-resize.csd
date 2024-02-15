<CsoundSynthesizer>
<CsOptions>
-o window-resize.ogg 
</CsOptions>
<CsInstruments>
sr = 44100
ksmps = 10
nchnls = 2
0dbfs = 1

instr 1 
kaz1 	linseg -360, p3, 0
kaz2 	linseg 0, p3, 360
kenv linseg 0.5, p3, 0.1
; generate pink noise
an1  pinkish 1
an2  pinkish  0.15
al1, ar1 hrtfmove2 an1, kaz1, -40, "hrtf-44100-left.dat","hrtf-44100-right.dat"	
al2, ar2 hrtfmove2 an2, kaz2, 40, "hrtf-44100-left.dat","hrtf-44100-right.dat"	
; write audio out
outs    kenv*(al1+al2), kenv*(ar1+ar2)
endin

</CsInstruments>
<CsScore>
i 1 0 .25
i 1 0.075 0.275
i 1 0.175 0.3
e
</CsScore>
</CsoundSynthesizer>

