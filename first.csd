<CsoundSynthesizer>
<CsOptions>
-odac           -iadc    ; -d     ;;;RT audio I/O
</CsOptions>

<CsInstruments>
sr = 44100
ksmps = 128
nchnls = 2
0dbfs = 1

        FLpanel         "Super controller",550,550,100,100 ;***** start of container
gknob1, ihandle1 FLknob "amp", 20, 1000, 0, 1, -1, 200, 20, 120
gknob2, ihandle2 FLknob "freq", 1, 200, 0, 1, -1, 200, 250, 120
        FLpanelEnd      ;***** end of container

        FLrun           ;***** runs the widget thread, it is always required!

instr 1
kline line 20, 100, 1000
aOut1 poscil kline, gknob2, 1

kFreq expon 100, 5, 1000
aOut poscil 0.2, aOut1, 1
outvalue "freqsweep", kFreq
outs aOut, aOut
endin
</CsInstruments>

<CsScore>
f 1 0 1024 10 1
i 1 0 100
</CsScore>
</CsoundSynthesizer>
