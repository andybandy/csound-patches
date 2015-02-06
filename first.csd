<CsoundSynthesizer>
<CsOptions>
</CsOptions>

<CsInstruments>
sr = 44100
ksmps = 128
nchnls = 2
0dbfs = 1

instr 1
kFreq line 100, 5, 1000
aOut oscili 0.2, kFreq, 1
outvalue "freqsweep", kFreq
outs aOut, aOut
endin

instr 2
kFreq expon 100, 5, 1000
aOut oscili 0.2, kFreq, 1
outvalue "freqsweep", kFreq
outs aOut, aOut
endin
</CsInstruments>

<CsScore>
f 1 0 1024 10 1
i 1 0 5
i 2 5 5
</CsScore>
</CsoundSynthesizer>
