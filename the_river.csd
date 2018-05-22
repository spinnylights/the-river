<Cabbage> bounds(0, 0, 0, 0)
form caption("The River") size(1000, 800), pluginid("rivr")

#define ModuleAppearance shape("sharp"), colour(3, 65, 54), outlinecolour(216, 216, 216), outlinethickness(2)
#define FontCol fontcolour(216, 216, 216) textcolour(216, 216, 216) fontcolour:0(216, 216, 216) fontcolour:1(216, 216, 216)
#define LabelFontCol colour(216, 216, 216) fontcolour(23, 85, 74) corners(0)
#define Highlight trackercolour(175, 233, 221) outlinecolour(175, 233, 221)

#define Waveforms text("sine", "triangle", "saw", "semi-saw", "square", "pulse", "narrow pulse", "narrower pulse", "buzz")

keyboard bounds(0, 650, 1000, 150) middlec(4) keywidth(30)

image bounds(0, 0, 310, 651) plant("oscillators") $ModuleAppearance {

  label bounds(1, 15, 308, 15) text("OSCILLATORS") colour(50, 50, 50) $LabelFontCol

  combobox bounds(20, 40, 80, 20) channel("wave1") $Waveforms $FontCol
  combobox bounds(115, 40, 80, 20) channel("wave2") $Waveforms $FontCol
  combobox bounds(210, 40, 80, 20) channel("wave3") $Waveforms $FontCol

  rslider bounds(31, 65, 60, 60) range(0.9, 1.1, 1, 1, 0.001) velocity(1) channel("fmod1") value(1) text("detune") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(126, 65, 60, 60) range(0.9, 1.1, 1, 1, 0.001) velocity(1) channel("fmod2") value(1) text("detune") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(220, 65, 60, 60) range(0.9, 1.1, 1, 1, 0.001) velocity(1) channel("fmod3") value(1) text("detune") valuetextbox(1) textbox(1) $FontCol

  label bounds(1, 144, 308, 14) text("VIBRATO") $FontCol

  rslider bounds(31,  168, 60, 60) range(0, 20, 0, 1, 0.001) channel("vibamp1") text("amp") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(126, 168, 60, 60) range(0, 20, 0, 1, 0.001) channel("vibamp2") text("amp") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(220, 168, 60, 60) range(0, 20, 0, 1, 0.001) channel("vibamp3") text("amp") valuetextbox(1) textbox(1) $FontCol

  rslider bounds(31,  243, 60, 60) range(0, 20, 0, 1, 0.001) channel("vibfreq1") text("freq") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(126, 243, 60, 60) range(0, 20, 0, 1, 0.001) channel("vibfreq2") text("freq") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(220, 243, 60, 60) range(0, 20, 0, 1, 0.001) channel("vibfreq3") text("freq") valuetextbox(1) textbox(1) $FontCol

  checkbox bounds(31,  318, 100, 15) channel("vibfreqt1tog") text("tempo") $FontCol $FontCol
  checkbox bounds(126, 318, 100, 15) channel("vibfreqt2tog") text("tempo") $FontCol $FontCol
  checkbox bounds(222, 318, 100, 15) channel("vibfreqt3tog") text("tempo") $FontCol $FontCol

  combobox bounds(20,  343, 80, 20) channel("vibfreqt1") text("1/1", "1/2", "1/3", "1/4", "1/6", "1/8", "1/9", "1/12", "1/16", "1/24", "1/32") $FontCol
  combobox bounds(115, 343, 80, 20) channel("vibfreqt2") text("1/1", "1/2", "1/3", "1/4", "1/6", "1/8", "1/9", "1/12", "1/16", "1/24", "1/32") $FontCol
  combobox bounds(210, 343, 80, 20) channel("vibfreqt3") text("1/1", "1/2", "1/3", "1/4", "1/6", "1/8", "1/9", "1/12", "1/16", "1/24", "1/32") $FontCol

  button bounds(31,  385, 60, 30) channel("vibwave1") items("sine","triangle")
  button bounds(126, 385, 60, 30) channel("vibwave2") items("sine","triangle")
  button bounds(220, 385, 60, 30) channel("vibwave3") items("sine","triangle")

  label bounds(1, 440, 308, 15) text("AMP") $FontCol

  vslider bounds(36,  468, 50, 150) range(0, 2, 1, 1, 0.001) value(1) channel("amp1") valuetextbox(1) textbox(1) $FontCol $Highlight
  vslider bounds(131, 468, 50, 150) range(0, 2, 1, 1, 0.001) value(1) channel("amp2") valuetextbox(1) textbox(1) $FontCol $Highlight
  vslider bounds(225, 468, 50, 150) range(0, 2, 1, 1, 0.001) value(1) channel("amp3") valuetextbox(1) textbox(1) $FontCol $Highlight

}

image bounds(309, 0, 200, 217) plant("pitch") $ModuleAppearance {

  label bounds(1, 15, 198, 15) text("PITCH") colour(50, 50, 50) $LabelFontCol

  vslider bounds(34, 45, 50, 150) range(-1, 1, 0, 1, 0.001) channel("pitchbend") valuetextbox(1) textbox(1) $FontCol $Highlight
  rslider bounds(109, 83, 60, 60) range(1, 36, 7, 1, 1) channel("pitchbrange") text("semitones") valuetextbox(1) textbox(1) $FontCol

}

image bounds(309, 216, 200, 315) plant("noise") $ModuleAppearance {

  label bounds(1, 15, 198, 15) text("NOISE") colour(50, 50, 50) $LabelFontCol

  rslider bounds(70, 52, 60, 60) range(-0.999, 0.999, 0, 1, 0.001) text("color") channel("noisefilt") valuetextbox(1) textbox(1) $FontCol
  vslider bounds(75, 135, 50, 150) range(0, 2, 0, 1, 0.001) channel("noiseamp") valuetextbox(1) textbox(1) $FontCol $Highlight

}

image bounds(309, 530, 200, 121) plant("controls") $ModuleAppearance {

  rslider bounds(25, 25, 60, 60) range(0, 1, 0.5, 1, 0.001) channel("pan") value(0.5) text("pan") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(95, 25, 60, 60) range(0.25, 4, 1, 0.42, 0.001) channel("oscgain") text("gain") value(0.8) valuetextbox(1) textbox(1) $FontCol
  image bounds(160, 47, 15, 15) outlinecolour(0, 128, 0, 255) outlinethickness(2) colour(255, 140, 0, 0) shape("circle") identchannel("gainlight") $Highlight

}

image bounds(508, 0, 492, 267) plant("filter") $ModuleAppearance {

#  image bounds(0, 30, 188, 237) $ModuleAppearance
#  image bounds(0, 30, 188, 146) $ModuleAppearance
#  image bounds(0, 30, 94, 237) $ModuleAppearance
#
# image bounds(188, 30, 304, 237) $ModuleAppearance
#image bounds(188, 30, 245, 237) $ModuleAppearance
#image bounds(188, 30, 187, 237) $ModuleAppearance
#image bounds(375, 30, 187, 118) $ModuleAppearance
# image bounds(188, 30, 93, 237) $ModuleAppearance
# image bounds(188, 30, 187, 118) $ModuleAppearance

  label bounds(1, 15, 490, 15) text("FILTER") colour(50, 50, 50) $LabelFontCol

  rslider bounds(72, 48, 60, 60) range(0, 20000, 12000, 0.3, 1) channel("filtcut") text("cutoff") value(12000) valuetextbox(1) textbox(1) $FontCol
  checkbox bounds(57, 118, 100, 15) text("track notes") channel("filttrack") $FontCol
  rslider bounds(25, 169, 60, 60) range(0, 1.5, 0, 1, 0.001) channel("filtres") text("resonance") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(118, 169, 60, 60) range(0, 100, 0, 1, 0.001) channel("filtdist") text("distortion") valuetextbox(1) textbox(1) $FontCol

  rslider bounds(204, 58, 60, 60) range(0.01, 4, 0.01, 1, 0.001) channel("filtenvatt") text("attack") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(297, 58, 60, 60) range(0.01, 4, 0.01, 1, 0.001) channel("filtenvdec") text("decay") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(204, 159, 60, 60) range(0.01, 1, 1, 1, 0.001) channel("filtenvsus") text("sustain") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(297, 159, 60, 60) range(0.01, 4, 4, 1, 0.001) channel("filtenvrel") text("release") valuetextbox(1) textbox(1) $FontCol
  button bounds(380, 128, 80, 40) channel("filtenvtype") items("linear","expon")

}

image bounds(508, 266, 300, 187) plant("envelope") $ModuleAppearance {

  #image bounds(0, 30, 300, 77) $ModuleAppearance
  #image bounds(0, 30, 242, 155) $ModuleAppearance
  #image bounds(0, 30, 185, 155) $ModuleAppearance
  #image bounds(0, 30, 92, 155) $ModuleAppearance
  #image bounds(0, 30, 185, 77) $ModuleAppearance

  label bounds(1, 15, 298, 15) text("ENVELOPE") colour(50, 50, 50) $LabelFontCol

  rslider bounds(17, 39, 60, 60) range(0.01, 4, 0.01, 1, 0.001) channel("envatt") text("attack") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(108, 39, 60, 60) range(0.01, 4, 0.01, 1, 0.001) channel("envdec") text("decay") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(17, 110, 60, 60) range(0.01, 1, 1, 1, 0.001) channel("envsus") text("sustain") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(108, 110, 60, 60) range(0.01, 4, 0.01, 1, 0.001) channel("envrel") text("release") valuetextbox(1) textbox(1) $FontCol
  button bounds(191, 88, 80, 40) channel("envtype") items("linear","expon")

}

image bounds(807, 266, 193, 115) plant("presets") $ModuleAppearance {

  label bounds(1, 15, 190, 15) text("PRESETS") colour(50, 50, 50) $LabelFontCol

  combobox   bounds(20, 40, 152, 25) populate("*.snaps") $FontCol
  filebutton bounds(20, 74, 90, 25) text("save new") mode("snapshot")

}

image bounds(807, 380, 193, 73) plant("logo") $ModuleAppearance {

  image bounds(1, 1, 191, 71) file("river_logo.svg")

}

image bounds(508, 452, 343, 199) plant("reverb") $ModuleAppearance {

# image bounds(0, 0, 256, 199) $ModuleAppearance
# image bounds(0, 0, 171, 199) $ModuleAppearance
# image bounds(0, 0, 85, 199) $ModuleAppearance

  label bounds(1, 15, 341, 15) text("REVERB") colour(50, 50, 50) $LabelFontCol

  rslider bounds(13, 41, 60, 60) range(0, 1, 0, 1, 0.001) channel("revwet") text("wetness") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(13, 115, 60, 60) range(0, 20000, 20000, 0.5, 0.001) channel("revfiltcut") text("brightness") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(98, 41, 60, 60) range(0.01, 4, 1, 1, 0.001) channel("revsize") text("size") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(98, 115, 60, 60) range(0.01, 0.99, 0.01, 1, 0.001) channel("revtight") text("tightness") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(183, 41, 60, 60) range(0, 3, 1, 1, 0.001) channel("revgain") text("gain") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(183, 115, 60, 60) range(0.00001, 0.001, 0.00001, 1, 0.00001) channel("revwarble") text("warble") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(269, 41, 60, 60) range(0, 1, 0.5, 1, 0.001) text("pan") channel("revpan") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(269, 115, 60, 60) range(-1, 1, 0, 1, 0.001) channel("revwarbpan") text("warble pan") valuetextbox(1) textbox(1) $FontCol

}

image bounds(850, 452, 150, 199) plant("cabinet") $ModuleAppearance {

  label bounds(1, 15, 148, 15) text("CABINET") colour(50, 50, 50) $LabelFontCol

  rslider bounds(45, 41, 60, 60) range(0, 1, 0, 1, 0.001) channel("wood") text("wood") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(45, 115, 60, 60) range(0.1, 4, 1, 1, 0.001) channel("woodspread") text("color") valuetextbox(1) textbox(1) $FontCol

}

</Cabbage>
<CsoundSynthesizer>
<CsOptions>
-n --displays -+rtmidi=NULL -M0 --midi-key-cps=4 --midi-velocity-amp=5 -m 135
</CsOptions>
; ==============================================
<CsInstruments>

sr      =  48000
ksmps   =  1
nchnls  =  2
0dbfs   =  1

; waveforms

;f 1  0 32768 10 1                                   ; sine wave
; 6  0 32768 11 30 1                                             ; buzz
gitabsize = 2 ^ 16
gisine     ftgen 0, 0, gitabsize, 10, 1
gitriangle ftgen 0, 0, gitabsize,  7, -1,     gitabsize/2, 1, gitabsize/2, -1                      ; triangle wave
gitrianglebl vco2init -gitriangle,  gitriangle+1, 1.05, 512, gitabsize, gitriangle
gisawtooth ftgen 0, 0, gitabsize,  7, -1,       gitabsize, 1                                       ; sawtooth
gisawtoothbl vco2init -gisawtooth,  gisawtooth+1, 1.05, 512, gitabsize, gisawtooth
gisemisaw  ftgen 0, 0, gitabsize,  7, -1, (gitabsize*3)/4, 1, gitabsize/4, -1                      ; semi-sawtooth
gisemisawbl  vco2init -gisemisaw,   gisemisaw+1, 1.05, 512, gitabsize, gisemisaw
gisquare   ftgen 0, 0, gitabsize,  7,  1,     gitabsize/2, 1,           0, -1,     gitabsize/2, -1 ; square wave
gisquarebl   vco2init -gisquare,    gisquare+1, 1.05, 512, gitabsize, gisquare
gipulse    ftgen 0, 0, gitabsize,  7,  1, (gitabsize*3)/8, 1,           0, -1, (gitabsize*5)/8, -1 ; pulse wave
gipulsebl    vco2init -gipulse,     gipulse+1, 1.05, 512, gitabsize, gipulse
ginpulse   ftgen 0, 0, gitabsize,  7,  1,     gitabsize/4, 1,           0, -1, (gitabsize*3)/4, -1 ; narrow pulse
ginpulsebl   vco2init -ginpulse,    ginpulse+1, 1.05, 512, gitabsize, ginpulse
ginrpulse  ftgen 0, 0, gitabsize,  7,  1,     gitabsize/8, 1,           0, -1, (gitabsize*7)/8, -1 ; narrower pulse
ginrpulsebl  vco2init -ginrpulse,  ginrpulse+1, 1.05, 512, gitabsize, ginrpulse
gibuzz   ftgen 0, 0, gitabsize, 11, 30, 1                                                        ; buzz
gibuzzbl  vco2init -gibuzz,  gibuzz+1, 1.05, 512, gitabsize, gibuzz

; accomp

gimewavf1 ftgen 0, 0, 32768, 10, 1                                                ; sine wave
gimewavf2 ftgen 0, 0, 32768, 9, 1, 1, 0, 3, .333, 180, 5, .2, 0, 7, .143, 180, 9, .111, 0       ; triangle wave

gasigl init 0
gasigr init 0

opcode Wavetable, k, kk
  kfrq, kwavnum xin

  kwav init 0
  if     (kwavnum == 1) then
    kwav = gisine
  elseif (kwavnum == 2) then
    kwav vco2ft kfrq, -gitriangle
  elseif (kwavnum == 3) then
    kwav vco2ft kfrq, -gisawtooth
  elseif (kwavnum == 4) then
    kwav vco2ft kfrq, -gisemisaw
  elseif (kwavnum == 5) then
    kwav vco2ft kfrq, -gisquare
  elseif (kwavnum == 6) then
    kwav vco2ft kfrq, -gipulse
  elseif (kwavnum == 7) then
    kwav vco2ft kfrq, -ginpulse
  elseif (kwavnum == 8) then
    kwav vco2ft kfrq, -ginrpulse
  elseif (kwavnum == 9) then
    kwav vco2ft kfrq, -gibuzz
  endif

  xout kwav
endop

instr 1
  ifrq   = p4 ; comes from midi
  iscale = p5
;  kbpmchn chnget "HOST_BPM"
  kbpmchn = 160
  kbpm = kbpmchn / 60
  kwav1   chnget "wave1" ; the number of an f-table
  kwav2   chnget "wave2"
  kwav3   chnget "wave3"
  kamp1   chnget "amp1"
  kamp2   chnget "amp2"
  kamp3   chnget "amp3"
  koscgain   chnget "oscgain"
  knfil   chnget "noisefilt" ; .9999 is white noise, 0 is pink noise, -.9999 is brown noise
  knamp      chnget "noiseamp"
  kpan       chnget "pan"
  kmod1      chnget "fmod1" ; mods are frq * mod, so 1 is unchanged
  kmod2      chnget "fmod2"
  kmod3      chnget "fmod3"
  kpitchb    chnget "pitchbend"
  kpitchbr   chnget "pitchbrange"
  kvib1a     chnget "vibamp1"
  kvib2a     chnget "vibamp2"
  kvib3a     chnget "vibamp3"
  kvib1f     chnget "vibfreq1"
  kvib2f     chnget "vibfreq2"
  kvib3f     chnget "vibfreq3"
  kvib1ft    chnget "vibfreqt1"
  kvib2ft    chnget "vibfreqt2"
  kvib3ft    chnget "vibfreqt3"
  kvib1fttog chnget "vibfreqt1tog"
  kvib2fttog chnget "vibfreqt2tog"
  kvib3fttog chnget "vibfreqt3tog"
  kvib1w     chnget "vibwave1" ; 0 is sine, 1 is triangle
  kvib2w     chnget "vibwave2"
  kvib3w     chnget "vibwave3"
  kfcut      chnget "filtcut"
  kfres      chnget "filtres" ; generally <1, higher values might cause aliasing
  kftrack    chnget "filttrack"
  kfdist     chnget "filtdist" ; amount of filter distortion, 1–100
  ifenvt     chnget "filtenvtype" ; 0 is linear, 1 is exponential
  ifenva     chnget "filtenvatt" ; duration of attack
  ifenvd     chnget "filtenvdec" ; duration of decay
  ifenvs     chnget "filtenvsus" ; level of sustain
  ifenvr     chnget "filtenvrel" ; duration of release
  ienvt      chnget "envtype" ; 0 is linear, 1 is exponential
  ienva      chnget "envatt" ; duration of attack
  ienvd      chnget "envdec" ; duration of decay
  ienvr      chnget "envrel" ; duration of release
  ienvs      chnget "envsus" ; level of sustain

          iTempoFracs[] fillarray 1, 2, 3, 4, 6, 8, 9, 12, 16, 27, 32, 81
        if (kvib1fttog == 1) then
          kvib1f = iTempoFracs[kvib1ft] * kbpm
          if (kvib1w == 0) then
            kvib1 poscil3 kvib1a, kvib1f
          else
            kvib1 poscil3 kvib1a, kvib1f, gimewavf2
          endif
        else
          if (kvib1w == 0) then
            kvib1 vibr kvib1a, kvib1f, gimewavf1
          else
            kvib1 vibr kvib1a, kvib1f, gimewavf2
          endif
        endif
        if (kvib2fttog == 1) then
          kvib2f = iTempoFracs[kvib2ft] * kbpm
          if (kvib2w == 0) then
            kvib2 poscil3 kvib2a, kvib2f
          else
            kvib2 poscil3 kvib2a, kvib2f, gimewavf2
          endif
        else
          if (kvib2w == 0) then
            kvib2 vibr kvib2a, kvib2f, gimewavf1
          else
            kvib2 vibr kvib2a, kvib2f, gimewavf2
          endif
        endif
        if (kvib3fttog == 1) then
          kvib3f = iTempoFracs[kvib3ft] * kbpm
          if (kvib3w == 0) then
            kvib3 poscil3 kvib3a, kvib3f
          else
            kvib3 poscil3 kvib3a, kvib3f, gimewavf2
          endif
        else
          if (kvib3w == 0) then
            kvib3 vibr kvib3a, kvib3f, gimewavf1
          else
            kvib3 vibr kvib3a, kvib3f, gimewavf2
          endif
        endif
        kpitch = semitone(kpitchbr * kpitchb)
      kosc1frq = (ifrq*kmod1*kpitch) + kvib1
      kosc2frq = (ifrq*kmod2*kpitch) + kvib2
      kosc3frq = (ifrq*kmod3*kpitch) + kvib3
    aosc1  oscilikt kamp1*koscgain, kosc1frq, Wavetable:k(kosc1frq, kwav1)
    aosc2  oscilikt kamp2*koscgain, kosc2frq, Wavetable:k(kosc2frq, kwav2)
    aosc3  oscilikt kamp3*koscgain, kosc3frq, Wavetable:k(kosc3frq, kwav3)
;    aosc1  poscil3 kamp1*koscgain, kosc1frq
;    aosc2  poscil3 kamp2*koscgain, kosc2frq
;    aosc3  poscil3 kamp3*koscgain, kosc3frq
    anoise noise   knamp*koscgain, knfil * (-1)
  asigprefilt = (aosc1 + aosc2 + aosc3 + anoise) / 4

          if (kftrack == 1) then
            kfcut = ifrq
          endif
          if (ienvt == 0) then
            afiltenv madsr ifenva, ifenvd, ifenvs, ifenvr
          else
            afiltenv mxadsr ifenva, ifenvd, ifenvs, ifenvr
          endif
        asigfilt1 tonex asigprefilt, kfcut*afiltenv, 4
        asigfilt2 lpf18 asigprefilt, kfcut*afiltenv, kfres, kfdist
      afilt2vol = kfres / 1.5
      afilt1vol = 1 - afilt2vol
    asigfilt = (asigfilt1 * afilt1vol) + (asigfilt2 * afilt2vol)

    if (ienvt == 0) then
      aenv madsr ienva, ienvd, ienvs, ienvr
    else
      aenv mxadsr ienva, ienvd, ienvs, ienvr
    endif
  asigprescale = asigfilt * aenv

  asigscale = asigprescale * iscale

    asigl, asigr pan2 asigscale, kpan
  gasigl = gasigl + asigl
  gasigr = gasigr + asigr

  ;outs asigl, asigr
endin

opcode Schroeder, a, akkikikikikiki
  ain, kgain, kdelt, imaxdelt, kalrvt1, iallpt1, kalrvt2, iallpt2, kalrvt3, iallpt3, kalrvt4, iallpt4, kalrvt5, iallpt5 xin

  aallp5 init 0
  
  adelin = ain + (aallp5 * kgain)

    iows = 1024 ; highest quality, heaviest cpu hit
  adel vdelayx adelin, a(kdelt), imaxdelt, iows

  aallp1 alpass adel,   kalrvt1, iallpt1
  aallp2 alpass aallp1, kalrvt2, iallpt2
  aallp3 alpass aallp2, kalrvt3, iallpt3
  aallp4 alpass aallp3, kalrvt4, iallpt4
  aallp5 alpass aallp4, kalrvt5, iallpt5

    asig = (aallp5 * (1 - kgain*kgain)) + (ain * (-kgain))
  xout asig
endop

instr 98 ; reverb
    kwetamt chnget "revwet"
  kdryamt  = 1 - kwetamt
  krolloff  chnget "revfiltcut"
  kfeedback chnget "revtight"
  kgain     chnget "revgain"
  ksize     chnget "revsize"
  kwarble   chnget "revwarble" ; 0.001 – 0.00001
  kpan      chnget "revpan"
  kwarbpan  chnget "revwarbpan" ; -1 – 1

    imaxdelt = 0.001
    imindelt = 0.00001
    kwarblel = 0.00001
    kwarbler = 0.00001

    if (kwarbpan < 0) then
      kwarblel = kwarble * (1 + kwarbpan)
      kwarbler = (-kwarbpan) * (imaxdelt - kwarble) + kwarble
    else
      kwarblel = kwarbpan * (imaxdelt - kwarble) + kwarble
      kwarbler = kwarble * (1 - kwarbpan)
    endif

    if (kwarblel > imaxdelt) then
      kwarblel = imaxdelt
    endif
    if (kwarblel < imindelt) then
      kwarblel = imindelt
    endif
    if (kwarbler > imaxdelt) then
      kwarbler = imaxdelt
    endif
    if (kwarbler < imindelt) then
      kwarbler = imindelt
    endif

  afiltsigl tonex gasigl, krolloff
  afiltsigr tonex gasigr, krolloff

      kdeltrandl = randh:k(kwarblel/2, 7.8, 2, 1) + kwarblel/2
    kdeltl     = poscil3:a(kdeltrandl, 2) + (kdeltrandl / 2)
    kalrvt1l  = ksize
    kalrvt2l  = ksize * 0.8
    kalrvt3l  = ksize * 0.6
    kalrvt4l  = ksize * 0.4
    kalrvt5l  = ksize * 0.2
    iallpt1l  = 0.014
    iallpt2l  = 0.033
    iallpt3l  = 0.047
    iallpt4l  = 0.073
    iallpt5l  = 0.084
  adell Schroeder afiltsigl, kfeedback, kdeltl, imaxdelt, kalrvt1l, iallpt1l, kalrvt2l, iallpt2l, kalrvt3l, iallpt3l, kalrvt4l, iallpt4l, kalrvt5l, iallpt5l

      kdeltrandr = randh:k(kwarbler/2, 1.8, 2, 1) + kwarbler/2
    kdeltr     = poscil3:a(kdeltrandr, 2) + (kdeltrandr / 2)
    kalrvt1r   = ksize
    kalrvt2r   = ksize * 0.78
    kalrvt3r   = ksize * 0.61
    kalrvt4r   = ksize * 0.39
    kalrvt5r   = ksize * 0.23
    iallpt1r   = 0.013
    iallpt2r   = 0.034
    iallpt3r   = 0.048
    iallpt4r   = 0.071
    iallpt5r   = 0.085
  adelr Schroeder afiltsigr, kfeedback, kdeltr, imaxdelt, kalrvt1r, iallpt1r, kalrvt2r, iallpt2r, kalrvt3r, iallpt3r, kalrvt4r, iallpt4r, kalrvt5r, iallpt5r

      adelll, adellr pan2 adell, kpan, 2
      adelrl, adelrr pan2 adelr, kpan, 2
    asigl = ((adelll + adelrl) * kwetamt * kgain) + (gasigl * kdryamt)
    asigr = ((adellr + adelrr) * kwetamt * kgain) + (gasigr * kdryamt)
;  gasigl = gasigl + asigl
;  gasigr = gasigr + asigr
  gasigl = asigl
  gasigr = asigr
endin

instr 99 ; cabinet
  
  asynthl = gasigl
  asynthr = gasigr

  kwoodwd chnget "wood"
  kwoodsp chnget "woodspread"

        kfundamental = 180
      kmode1freq =  1.00            * kfundamental
      kmode2freq =  2.572 * kwoodsp * kfundamental
      kmode3freq =  4.47  * kwoodsp * kfundamental
      kmode4freq =  6.091 * kwoodsp * kfundamental
      kmode5freq =  9.794 * kwoodsp * kfundamental
      kmode6freq = 12.573 * kwoodsp * kfundamental
        kmode1q    = 3
      kmode2q    = kmode1q
      kmode3q    = kmode1q
      kmode4q    = kmode1q
      kmode5q    = kmode1q
      kmode6q    = kmode1q
    amode1l mode asynthl, kmode1freq, kmode1q
    amode1r mode asynthr, kmode1freq, kmode1q
    amode2l mode asynthl, kmode2freq, kmode2q
    amode2r mode asynthr, kmode2freq, kmode2q
    amode3l mode asynthl, kmode3freq, kmode3q
    amode3r mode asynthr, kmode3freq, kmode3q
    amode4l mode asynthl, kmode4freq, kmode4q
    amode4r mode asynthr, kmode4freq, kmode4q
    amode5l mode asynthl, kmode5freq, kmode5q
    amode5r mode asynthr, kmode5freq, kmode5q
    amode6l mode asynthl, kmode6freq, kmode6q
    amode6r mode asynthr, kmode6freq, kmode6q
  amodesl = (amode1l + amode2l + amode3l + amode4l + amode5l + amode6l) / 6
  amodesr = (amode1r + amode2r + amode3r + amode4r + amode5r + amode6r) / 6

  asiglpre = (asynthl * (1 - kwoodwd)) + (amodesl * kwoodwd)
  asigrpre = (asynthr * (1 - kwoodwd)) + (amodesr * kwoodwd)

  asigl balance asiglpre, asynthl
  asigr balance asigrpre, asynthr

  outs asigl, asigr

  ksigl downsamp asigl
  ksigr downsamp asigr

  if ((ksigl > 1) || (ksigr > 1)) then
    chnset "colour(255, 140, 0, 255)", "gainlight"
  else
    chnset "colour(255, 140, 0, 0)", "gainlight"
  endif

  gasigl = 0
  gasigr = 0
endin

</CsInstruments>
; ==============================================
<CsScore>

;f 1  0 32768 10 1                                   ; sine wave
;f 3  0 32768 7 -1 16384 1 16384 -1 ; triangle wave
;f 4  0 32768 7 -1 32768 1 ; sawtooth
;f 5  0 32768 7 -1 24576 1 8192 -1 ; semi-sawtooth
;f 7  0 32768 7 1 16384 1 0 -1 16384 -1 ; square wave
;f 2  0 32768 7 1 12288 1 0 -1 20480 -1 ; pulse wave
;f 8  0 32768 7 1 8192 1 0 -1 24576 -1                            ; narrow pulse
;f 9  0 32768 7 1 4096 1 0 -1 28672 -1                            ; narrower pulse
;f 6  0 32768 11 30 1                                             ; buzz

;f 0 z
i 98 0 z
i 99 0 z
</CsScore>
</CsoundSynthesizer>