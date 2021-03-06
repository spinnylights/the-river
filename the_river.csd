; Copyright (C) 2018 Zoë Gold Sparks
; 
; This program is free software: you can redistribute it and/or modify
; it under the terms of the GNU General Public License as published by
; the Free Software Foundation, either version 3 of the License, or
; (at your option) any later version.
; 
; This program is distributed in the hope that it will be useful,
; but WITHOUT ANY WARRANTY; without even the implied warranty of
; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
; GNU General Public License for more details.
; 
; You should have received a copy of the GNU General Public License
; along with this program.  If not, see <http://www.gnu.org/licenses/>.
; 
; If you have any questions, I (Zoë Sparks) can be reached via email at
; zoe@milky.flowers or on Twitter at @spinnylights.

<Cabbage> bounds(1, 0, 0, 0)
form caption("The River") size(1310, 1075), pluginid("rivr")

#define ModuleAppearance shape("sharp"), colour(3, 65, 54), outlinecolour(216, 216, 216), outlinethickness(2)
#define FontCol fontcolour(216, 216, 216) textcolour(216, 216, 216) fontcolour:0(216, 216, 216) fontcolour:1(216, 216, 216)
#define LabelFontCol colour(216, 216, 216) fontcolour(23, 85, 74) corners(0)
#define Highlight trackercolour(175, 233, 221) outlinecolour(175, 233, 221)
#define SwitchCol colour:1(235, 120, 0) colour:0(0, 0, 0)

#define Waveforms text("sine", "triangle", "saw", "semi-saw", "square", "pulse", "narrow pulse", "narrower pulse", "buzz", "spec1", "spec2", "spec3", "spec4", "spec5", "spec6", "spec7", "spec8", "spec9", "spec10", "spec11", "spec12", "spec13", "spec14", "spec15", "spec16", "spec17", "spec18", "spec19", "spec20", "spec21", "spec22", "spec23", "spec24", "spec25", "spec26", "spec27", "spec28", "spec29", "spec30", "hamming", "blackman-harris", "sync", "bartlett", "gaussian")

keyboard bounds(619, 870, 690, 205) middlec(4) keywidth(30)

image bounds(0, 0, 620, 1075) plant("oscillators") $ModuleAppearance {

  label bounds(1, 15, 618, 15) text("OSCILLATORS") colour(50, 50, 50) $LabelFontCol

  combobox bounds(20, 50, 80, 20) channel("wave1") $Waveforms $FontCol
  combobox bounds(115, 50, 80, 20) channel("wave2") $Waveforms $FontCol
  combobox bounds(210, 50, 80, 20) channel("wave3") $Waveforms $FontCol

  rslider bounds(31, 80, 60, 60) range(0.9, 1.1, 1, 1, 0.001) velocity(1) channel("fmod1") value(1) text("detune") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(126, 80, 60, 60) range(0.9, 1.1, 1, 1, 0.001) velocity(1) channel("fmod2") value(1) text("detune") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(220, 80, 60, 60) range(0.9, 1.1, 1, 1, 0.001) velocity(1) channel("fmod3") value(1) text("detune") valuetextbox(1) textbox(1) $FontCol

  label bounds(1, 167, 308, 14) text("VIBRATO") $FontCol

  rslider bounds(31,  191, 60, 60) range(0, 20, 0, 1, 0.001) channel("vibamp1") text("amp") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(126, 191, 60, 60) range(0, 20, 0, 1, 0.001) channel("vibamp2") text("amp") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(220, 191, 60, 60) range(0, 20, 0, 1, 0.001) channel("vibamp3") text("amp") valuetextbox(1) textbox(1) $FontCol

  rslider bounds(31,  266, 60, 60) range(0, 20, 0, 1, 0.001) channel("vibfreq1") text("freq") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(126, 266, 60, 60) range(0, 20, 0, 1, 0.001) channel("vibfreq2") text("freq") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(220, 266, 60, 60) range(0, 20, 0, 1, 0.001) channel("vibfreq3") text("freq") valuetextbox(1) textbox(1) $FontCol

  checkbox bounds(31,  341, 100, 15) channel("vibfreqt1tog") text("tempo") $FontCol $FontCol $SwitchCol
  checkbox bounds(126, 341, 100, 15) channel("vibfreqt2tog") text("tempo") $FontCol $FontCol $SwitchCol
  checkbox bounds(222, 341, 100, 15) channel("vibfreqt3tog") text("tempo") $FontCol $FontCol $SwitchCol

  combobox bounds(20,  366, 80, 20) channel("vibfreqt1") text("1/1", "1/2", "1/3", "1/4", "1/6", "1/8", "1/9", "1/12", "1/16", "1/24", "1/32") $FontCol
  combobox bounds(115, 366, 80, 20) channel("vibfreqt2") text("1/1", "1/2", "1/3", "1/4", "1/6", "1/8", "1/9", "1/12", "1/16", "1/24", "1/32") $FontCol
  combobox bounds(210, 366, 80, 20) channel("vibfreqt3") text("1/1", "1/2", "1/3", "1/4", "1/6", "1/8", "1/9", "1/12", "1/16", "1/24", "1/32") $FontCol

  button bounds(31,  398, 60, 30) channel("vibwave1") items("sine","triangle")
  button bounds(126, 398, 60, 30) channel("vibwave2") items("sine","triangle")
  button bounds(220, 398, 60, 30) channel("vibwave3") items("sine","triangle")

  label bounds(1, 451, 308, 14) text("PHASE") $FontCol

  rslider bounds(31, 477, 60, 60) range(0, .5, 0, 1, 0.001) channel("osc1phase") text("phase") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(126, 477, 60, 60) range(0, .5, 0, 1, 0.001) channel("osc2phase") text("phase") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(220, 477, 60, 60) range(0, .5, 0, 1, 0.001) channel("osc3phase") text("phase") valuetextbox(1) textbox(1) $FontCol

  rslider bounds(31,  552, 60, 60) range(0, 20, 0, 1, 0.001) channel("phasefreq1") text("freq") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(126, 552, 60, 60) range(0, 20, 0, 1, 0.001) channel("phasefreq2") text("freq") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(220, 552, 60, 60) range(0, 20, 0, 1, 0.001) channel("phasefreq3") text("freq") valuetextbox(1) textbox(1) $FontCol

  checkbox bounds(31,  625, 100, 15) channel("phasefreq1tog") text("tempo") $FontCol $FontCol $SwitchCol
  checkbox bounds(126, 625, 100, 15) channel("phasefreq2tog") text("tempo") $FontCol $FontCol $SwitchCol
  checkbox bounds(222, 625, 100, 15) channel("phasefreq3tog") text("tempo") $FontCol $FontCol $SwitchCol

  combobox bounds(20,  650, 80, 20) channel("phasefreqt1") text("1/1", "1/2", "1/3", "1/4", "1/6", "1/8", "1/9", "1/12", "1/16", "1/24", "1/32") $FontCol
  combobox bounds(115, 650, 80, 20) channel("phasefreqt2") text("1/1", "1/2", "1/3", "1/4", "1/6", "1/8", "1/9", "1/12", "1/16", "1/24", "1/32") $FontCol
  combobox bounds(210, 650, 80, 20) channel("phasefreqt3") text("1/1", "1/2", "1/3", "1/4", "1/6", "1/8", "1/9", "1/12", "1/16", "1/24", "1/32") $FontCol

  button bounds(31,  682, 60, 30) channel("phasewave1") items("sine","triangle")
  button bounds(126, 682, 60, 30) channel("phasewave2") items("sine","triangle")
  button bounds(220, 682, 60, 30) channel("phasewave3") items("sine","triangle")

  label bounds(1, 736, 308, 14) text("POLY") $FontCol

  rslider bounds(31,  762, 60, 60)  range(1, 7, 1, 1, 2) channel("oscvoices1") text("voices") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(126, 762, 60, 60) range(1, 7, 1, 1, 2) channel("oscvoices2") text("voices") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(220, 762, 60, 60) range(1, 7, 1, 1, 2) channel("oscvoices3") text("voices") valuetextbox(1) textbox(1) $FontCol

  rslider bounds(31,  837, 60, 60) range(0, 1, 0, 1, 0.001) channel("oscmix1") text("mix") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(126, 837, 60, 60) range(0, 1, 0, 1, 0.001) channel("oscmix2") text("mix") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(220, 837, 60, 60) range(0, 1, 0, 1, 0.001) channel("oscmix3") text("mix") valuetextbox(1) textbox(1) $FontCol

  rslider bounds(31,  912, 60, 60)  range(0, 1, 0, 1, 0.001) channel("oscpoldet1") text("detune") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(126, 912, 60, 60) range(0, 1, 0, 1, 0.001) channel("oscpoldet2") text("detune") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(220, 912, 60, 60) range(0, 1, 0, 1, 0.001) channel("oscpoldet3") text("detune") valuetextbox(1) textbox(1) $FontCol

  rslider bounds(31,  987, 60, 60)  range(0, 1, 0, 1, 0.001) channel("oscspread1") text("spread") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(126, 987, 60, 60) range(0, 1, 0, 1, 0.001) channel("oscspread2") text("spread") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(220, 987, 60, 60) range(0, 1, 0, 1, 0.001) channel("oscspread3") text("spread") valuetextbox(1) textbox(1) $FontCol

  label bounds(316, 50, 308, 15) text("FREQUENCY MODULATION") $FontCol

  label bounds(311, 171, 15, 15) text("1:") $FontCol

  rslider bounds(341, 78, 60, 60) range(0, 20, 0, 1, 0.001) velocity(1) channel("fmamt11") text("amt") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(436, 78, 60, 60) range(0, 20, 0, 1, 0.001) velocity(1) channel("fmamt21") text("amt") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(530, 78, 60, 60) range(0, 20, 0, 1, 0.001) velocity(1) channel("fmamt31") text("amt") valuetextbox(1) textbox(1) $FontCol

  rslider bounds(341, 148, 60, 60) range(0, 8, 1, 1, 1) velocity(1) channel("fmrat11") text("ratio") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(436, 148, 60, 60) range(0, 8, 1, 1, 1) velocity(1) channel("fmrat21") text("ratio") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(530, 148, 60, 60) range(0, 8, 1, 1, 1) velocity(1) channel("fmrat31") text("ratio") valuetextbox(1) textbox(1) $FontCol

  rslider bounds(341, 218, 60, 60) range(0, 0.9999, 0, 1, 0.0001) velocity(1) channel("fmfine11") text("fine") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(436, 218, 60, 60) range(0, 0.9999, 0, 1, 0.0001) velocity(1) channel("fmfine21") text("fine") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(530, 218, 60, 60) range(0, 0.9999, 0, 1, 0.0001) velocity(1) channel("fmfine31") text("fine") valuetextbox(1) textbox(1) $FontCol

  label bounds(311, 406, 15, 15) text("2:") $FontCol

  rslider bounds(341, 313, 60, 60) range(0, 20, 0, 1, 0.001) velocity(1) channel("fmamt12") text("amt") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(436, 313, 60, 60) range(0, 20, 0, 1, 0.001) velocity(1) channel("fmamt22") text("amt") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(530, 313, 60, 60) range(0, 20, 0, 1, 0.001) velocity(1) channel("fmamt32") text("amt") valuetextbox(1) textbox(1) $FontCol

  rslider bounds(341, 383, 60, 60) range(0, 8, 1, 1, 1) velocity(1) channel("fmrat12") text("ratio") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(436, 383, 60, 60) range(0, 8, 1, 1, 1) velocity(1) channel("fmrat22") text("ratio") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(530, 383, 60, 60) range(0, 8, 1, 1, 1) velocity(1) channel("fmrat32") text("ratio") valuetextbox(1) textbox(1) $FontCol

  rslider bounds(341, 453, 60, 60) range(0, 0.9999, 0, 1, 0.0001) velocity(1) channel("fmfine12") text("fine") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(436, 453, 60, 60) range(0, 0.9999, 0, 1, 0.0001) velocity(1) channel("fmfine22") text("fine") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(530, 453, 60, 60) range(0, 0.9999, 0, 1, 0.0001) velocity(1) channel("fmfine32") text("fine") valuetextbox(1) textbox(1) $FontCol

  label bounds(311, 641, 15, 15) text("3:") $FontCol

  rslider bounds(341, 548, 60, 60) range(0, 20, 0, 0.25, 0.001) velocity(1) channel("fmamt13") text("amt") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(436, 548, 60, 60) range(0, 20, 0, 0.25, 0.001) velocity(1) channel("fmamt23") text("amt") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(530, 548, 60, 60) range(0, 20, 0, 0.25, 0.001) velocity(1) channel("fmamt33") text("amt") valuetextbox(1) textbox(1) $FontCol

  rslider bounds(341, 618, 60, 60) range(0, 8, 1, 1, 1) velocity(1) channel("fmrat13") text("ratio") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(436, 618, 60, 60) range(0, 8, 1, 1, 1) velocity(1) channel("fmrat23") text("ratio") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(530, 618, 60, 60) range(0, 8, 1, 1, 1) velocity(1) channel("fmrat33") text("ratio") valuetextbox(1) textbox(1) $FontCol

  rslider bounds(341, 688, 60, 60) range(0, 0.9999, 0, 1, 0.0001) velocity(1) channel("fmfine13") text("fine") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(436, 688, 60, 60) range(0, 0.9999, 0, 1, 0.0001) velocity(1) channel("fmfine23") text("fine") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(530, 688, 60, 60) range(0, 0.9999, 0, 1, 0.0001) velocity(1) channel("fmfine33") text("fine") valuetextbox(1) textbox(1) $FontCol

  label bounds(311, 780, 308, 15) text("AMP") $FontCol

  rslider bounds(341, 806, 60, 60)  range(0, 1, 0.5, 1, 0.001) channel("osc1pan") text("pan") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(436, 806, 60, 60) range(0, 1, 0.5, 1, 0.001) channel("osc2pan") text("pan") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(530, 806, 60, 60) range(0, 1, 0.5, 1, 0.001) channel("osc3pan") text("pan") valuetextbox(1) textbox(1) $FontCol

  rslider bounds(341, 888, 60, 60) range(0, 20, 0, 0.5, 0.001) channel("osc1panlfo") text("pan lfo") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(436, 888, 60, 60) range(0, 20, 0, 0.5, 0.001) channel("osc2panlfo") text("pan lfo") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(530, 888, 60, 60) range(0, 20, 0, 0.5, 0.001) channel("osc3panlfo") text("pan lfo") valuetextbox(1) textbox(1) $FontCol

  rslider bounds(346, 968, 50, 60) range(0, 2, 1, 1, 0.001) value(1) channel("amp1") valuetextbox(1) textbox(1) $FontCol $Highlight
  rslider bounds(441, 968, 50, 60) range(0, 2, 1, 1, 0.001) value(1) channel("amp2") valuetextbox(1) textbox(1) $FontCol $Highlight
  rslider bounds(535, 968, 50, 60) range(0, 2, 1, 1, 0.001) value(1) channel("amp3") valuetextbox(1) textbox(1) $FontCol $Highlight

  checkbox bounds (366, 1045, 11, 11) channel("osc1tog") value(1) $SwitchCol
  checkbox bounds (461, 1045, 11, 11) channel("osc2tog") value(1) $SwitchCol
  checkbox bounds (555, 1045, 11, 11) channel("osc3tog") value(1) $SwitchCol

}

#define PitchLocations text("center", "slider", "floor", "ceiling")

image bounds(619, 651, 690, 219) plant("pitch") $ModuleAppearance {

  label bounds(1, 15, 688, 15) text("PITCH") colour(50, 50, 50) $LabelFontCol

  vslider bounds(34, 45, 50, 150) range(-1, 1, 0, 1, 0.001) channel("pitchbend") valuetextbox(1) textbox(1) $FontCol $Highlight
  rslider bounds(109, 61, 60, 60) range(1, 120, 7, 1, 1) channel("pitchbrange") text("semitones") valuetextbox(1) textbox(1) $FontCol
  checkbox bounds(99, 152, 100, 15) channel("pitchenvtog") text("envelope") $FontCol $SwitchCol

  rslider bounds(214, 45, 60, 60) range(0.001, 4, 0.001, 1, 0.001) channel("pitchenvatt") text("attack") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(284, 45, 60, 60) range(0.001, 4, 0.001, 1, 0.001) channel("pitchenvdec") text("decay") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(354, 45, 60, 60) range(0.001, 1, 1, 1, 0.001) channel("pitchenvsus") text("sustain") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(424, 45, 60, 60) range(0.001, 4, 4, 1, 0.001) channel("pitchenvrel") text("release") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(214, 136, 60, 60) range(-10, 10, 0, 1, 0.001) channel("pitchenvattshape") text("shape") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(284, 136, 60, 60) range(-10, 10, 0, 1, 0.001) channel("pitchenvdecshape") text("shape") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(424, 136, 60, 60) range(-10, 10, 0, 1, 0.001) channel("pitchenvrelshape") text("shape") valuetextbox(1) textbox(1) $FontCol

  label text("from:")       bounds(539, 46, 50, 12) align("left") $FontCol
  combobox                  bounds(539, 66, 80, 20) channel("pitchenvfrom") value(1) $PitchLocations

  label text("to:")         bounds(539, 101, 50, 12) align("left") $FontCol
  combobox                  bounds(539, 121, 80, 20) channel("pitchenvto") value(2) $PitchLocations

  label text("release to:") bounds(539, 156, 80, 12) align("left") $FontCol
  combobox                  bounds(539, 176, 80, 20) channel("pitchenvrelfloor") value(2) $PitchLocations

}

image bounds(619, 0, 200, 128) plant("noise") $ModuleAppearance {

  label bounds(1, 15, 198, 15) text("NOISE") colour(50, 50, 50) $LabelFontCol

  checkbox bounds (5, 17, 11, 11) channel("noisetog") value(1) $SwitchCol

  rslider bounds(35, 45, 60, 60) range(-0.999, 0.999, 0, 1, 0.001) text("color") channel("noisefilt") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(109, 45, 60, 60) range(0, 2, 0, 1, 0.001) channel("noiseamp") valuetextbox(1) textbox(1) valuetextbox(1) $FontCol $Highlight

}

image bounds(619, 127, 200, 93) plant("controls") $ModuleAppearance {

  rslider bounds(25, 11, 60, 60) range(0, 1, 0.5, 1, 0.001) channel("pan") value(0.5) text("pan") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(95, 11, 60, 60) range(0.25, 4, 1, 0.42, 0.001) channel("oscgain") text("gain") value(0.8) valuetextbox(1) textbox(1) $FontCol
  image bounds(160, 33, 15, 15) outlinecolour(0, 128, 0, 255) outlinethickness(2) colour(255, 140, 0, 0) shape("circle") identchannel("gainlight") $Highlight

}

image bounds(619, 219, 200, 234) plant("delay") $ModuleAppearance {

  label bounds(1, 15, 198, 15) text("DELAY") colour(50, 50, 50) $LabelFontCol
  checkbox bounds (5, 17, 11, 11) channel("delaytog") value(1) $SwitchCol

  rslider bounds(10, 45, 60, 60) range(0, 2, 0, 1, 0.001) channel("delayamp") text("amp") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(70, 45, 60, 60) range(0, 100, 0, 1, 0.001) channel("delaydec") text("decay") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(130, 45, 60, 60) range(0, 10, 0, 0.25, 0.001) channel("delayspeed") text("speed") valuetextbox(1) textbox(1) $FontCol

  checkbox bounds(18, 123, 60, 15) channel("delaytempotog") text("tempo") $FontCol $FontCol $SwitchCol
  combobox bounds(100, 120, 80, 20) channel("delaytempo") text("8/1", "6/1", "4/1", "3/1", "2/1", "1/1", "1/2", "1/3", "1/4", "1/6", "1/8", "1/9", "1/12", "1/16", "1/24", "1/32") value(6) $FontCol

  rslider bounds(40, 150, 60, 60) range(0, 1, 0.5, 1, 0.001) channel("delaypan") text("pan") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(104, 150, 60, 60) range(0, 20, 0, 0.5, 0.001) channel("delaypanlfo") text("pan lfo") valuetextbox(1) textbox(1) $FontCol
}

image bounds(619, 452, 200, 200) plant("peakeq") $ModuleAppearance {

  label bounds(1, 15, 198, 15) text("PEAKING EQ") colour(50, 50, 50) $LabelFontCol
  checkbox bounds (5, 17, 11, 11) channel("peaktog") value(1) $SwitchCol

  rslider bounds(0,  45, 80, 60) range(0, 20000, 2000, 0.3, 0.001) channel("peakcenter") text("cutoff") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(70, 45, 60, 60) range(0, 12, 1, 0.28, 0.001) channel("peakv") text("boost/cut") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(130, 45, 60, 60) range(0.25, 4, 1, 0.44, 0.001) channel("peakq") text("Q") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(0,  120, 80, 60) range(0, 20000, 7000, 0.3, 0.001) channel("peakcenter2") text("cutoff") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(70, 120, 60, 60) range(0, 12, 1, 0.28, 0.001) channel("peakv2") text("boost/cut") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(130, 120, 60, 60) range(0.25, 4, 1, 0.44, 0.001) channel("peakq2") text("Q") valuetextbox(1) textbox(1) $FontCol

}

image bounds(818, 0, 492, 267) plant("filter") $ModuleAppearance {

  label bounds(1, 15, 490, 15) text("FILTER") colour(50, 50, 50) $LabelFontCol

  checkbox bounds (5, 17, 11, 11) channel("filttog") value(1) $SwitchCol

  rslider bounds(10, 48, 90, 60) range(0, 20000, 12000, 0.3, 0.001) channel("filtcut") text("cutoff") value(12000) valuetextbox(1) textbox(1) $FontCol
  checkbox bounds(10, 118, 100, 15) text("track notes") channel("filttrack") $FontCol $SwitchCol
  rslider bounds(103, 48, 90, 60) range(0, 20000, 1000, 1, 0.001) channel("filtwidth") text("bandwidth") valuetextbox(1) textbox(1) $FontCol
  button bounds(62, 137, 80, 25) channel("filttype") items("lowpass","bandpass")
  rslider bounds(25, 169, 60, 60) range(0, 1.5, 0, 1, 0.001) channel("filtres") text("resonance") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(118, 169, 60, 60) range(0, 100, 0, 1, 0.001) channel("filtdist") text("distortion") valuetextbox(1) textbox(1) $FontCol

  rslider bounds(204, 58, 60, 60) range(0.01, 4, 0.01, 1, 0.001) channel("filtenvatt") text("attack") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(274, 58, 60, 60) range(0.01, 4, 0.01, 1, 0.001) channel("filtenvdec") text("decay") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(344, 58, 60, 60) range(0.01, 1, 1, 1, 0.001) channel("filtenvsus") text("sustain") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(414, 58, 60, 60) range(0.01, 4, 4, 1, 0.001) channel("filtenvrel") text("release") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(204, 159, 60, 60) range(-10, 10, 0, 1, 0.001) channel("filtenvattshape") text("shape") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(274, 159, 60, 60) range(-10, 10, 0, 1, 0.001) channel("filtenvdecshape") text("shape") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(414, 159, 60, 60) range(-10, 10, 0, 1, 0.001) channel("filtenvrelshape") text("shape") valuetextbox(1) textbox(1) $FontCol

}

image bounds(818, 266, 300, 187) plant("envelope") $ModuleAppearance {

  label bounds(1, 15, 298, 15) text("ENVELOPE") colour(50, 50, 50) $LabelFontCol

  rslider bounds(15, 39, 60, 60) range(0.01, 4, 0.01, 1, 0.001) channel("envatt") text("attack") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(85, 39, 60, 60) range(0.01, 4, 0.01, 1, 0.001) channel("envdec") text("decay") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(155, 39, 60, 60) range(0.01, 1, 1, 1, 0.001) channel("envsus") text("sustain") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(225, 39, 60, 60) range(0.01, 4, 0.01, 1, 0.001) channel("envrel") text("release") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(15, 110, 60, 60)  range(-10, 10, 0, 1, 0.001) channel("envattshape") text("shape") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(85, 110, 60, 60)  range(-10, 10, 0, 1, 0.001) channel("envdecshape") text("shape") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(225, 110, 60, 60) range(-10, 10, 0, 1, 0.001) channel("envrelshape") text("shape") valuetextbox(1) textbox(1) $FontCol

}

image bounds(1117, 266, 197, 115) plant("presets") $ModuleAppearance {

  label bounds(1, 15, 190, 15) text("PRESETS") colour(50, 50, 50) $LabelFontCol

  combobox   bounds(20, 40, 152, 25) populate("*.snaps") $FontCol
  filebutton bounds(20, 74, 90, 25) text("save new") mode("snapshot")

}

image bounds(1117, 380, 193, 73) plant("logo") $ModuleAppearance {

  image bounds(1, 1, 191, 71) file("river_logo.svg")

}

image bounds(818, 452, 343, 200) plant("reverb") $ModuleAppearance {

  label bounds(1, 15, 341, 15) text("REVERB") colour(50, 50, 50) $LabelFontCol

  checkbox bounds (5, 17, 11, 11) channel("revtog") value(1) $SwitchCol

  rslider bounds(13, 41, 60, 60) range(0, 1, 0, 1, 0.001) channel("revwet") text("wetness") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(1, 115, 85, 60) range(0, 20000, 20000, 0.5, 0.001) channel("revfiltcut") text("brightness") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(78, 41, 60, 60) range(0.01, 4, 1, 1, 0.001) channel("revsize") text("splash") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(78, 115, 60, 60) range(0.01, 0.99, 0.01, 1, 0.001) channel("revtight") text("tightness") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(143, 41, 60, 60) range(.2, 5, .6, .4, 0.001) channel("revdist") text("distance") valuetextbox(1024) textbox(1) $FontCol
  rslider bounds(143, 115, 60, 60) range(1, 100, 1, 1, 0.1) channel("revwarble") text("warble") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(208, 41, 60, 60) range(0, 1, 0.5, 1, 0.001) text("pan") channel("revpan") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(208, 115, 60, 60) range(8, 1024, 100, 1, 4) channel("reviws") text("quality") valuetextbox(1024) textbox(1) $FontCol
  rslider bounds(273, 41, 60, 60) range(0, 20, 0, 0.5, 0.001) channel("panlforate") text("pan lfo") valuetextbox(1) textbox(1) $FontCol
  rslider bounds(273, 115, 60, 60) range(0, 3, 1, 1, 0.001) channel("revgain") text("gain") valuetextbox(1) textbox(1) $FontCol

  }

  image bounds(1160, 452, 150, 200) plant("cabinet") $ModuleAppearance {

    label bounds(1, 15, 148, 15) text("CABINET") colour(50, 50, 50) $LabelFontCol

    checkbox bounds (5, 17, 11, 11) channel("cabtog") value(1) $SwitchCol

    rslider bounds(45, 41, 60, 60) range(0, 1, 0, 1, 0.001) channel("wood") text("wood") valuetextbox(1) textbox(1) $FontCol
    rslider bounds(45, 115, 60, 60) range(0.1, 4, 1, 1, 0.001) channel("woodspread") text("color") valuetextbox(1) textbox(1) $FontCol

  }

  </Cabbage>
  <CsoundSynthesizer>
  <CsOptions>
  -n -+rtmidi=NULL -M0 --midi-key-cps=4 --midi-velocity-amp=5
  </CsOptions>
  ; ==============================================
  <CsInstruments>

  sr      =  41000
  ksmps   =  32
  nchnls  =  2
  0dbfs   =  1

  ; waveforms


  ;f 1  0 32768 10 1                                   ; sine wave
  ; 6  0 32768 11 30 1                                             ; buzz
  gitabsize = 2 ^ 17
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
  gispec1 ftgen 0, 0, gitabsize, 10, 1, 0, 0.596, 0, 0.299, 0, 0.062, 0, 0.011, 0, 0.008, 0, 0.003, 0, 0.001
  gispec1bl vco2init -gispec1, gispec1+1, 1.05, 512, gitabsize, gispec1
  gispec2 ftgen 0, 0, gitabsize, 19, 1, 0.842, 171, -0.455, 3, 0.754, 253, -0.158, 7, 0.086, 139, -0.024, 9, 0.166, 14, 0.035
  gispec2bl vco2init -gispec2, gispec2+1, 1.05, 512, gitabsize, gispec2
  gispec3 ftgen 0, 0, gitabsize, 9, 1, 1.0, 122, 5, 0.509, 331, 8, 0.261, 282, 9, 0.001, 22, 13, 0.048, 82, 14, 0.125, 201, 16, 0.102, 67
  gispec3bl vco2init -gispec3, gispec3+1, 1.05, 512, gitabsize, gispec3
  gispec4 ftgen 0, 0, gitabsize, 9, 1, 1.0, 180, 3, 0.877, 341, 4, 0.597, 233, 5, 0.691, 162, 7, 0.954, 298, 8, 0.859, 214, 9, 0.625, 83
  gispec4bl vco2init -gispec4, gispec4+1, 1.05, 512, gitabsize, gispec4
  gispec5 ftgen 0, 0, gitabsize, 9, 1, 0.539, 88, 2, 0.578, 309, 3, 0.557, 42, 4, 0.215, 51, 5, 0.249, 307, 6, 0.024, 350
  gispec5bl vco2init -gispec5, gispec5+1, 1.05, 512, gitabsize, gispec5
  gispec6 ftgen 0, 0, gitabsize, 19, 1, 0.978, 128, -0.005, 2, 1.0, 203, -0.409, 4, 0.665, 176, -0.03, 5, 0.563, 112, -0.238, 7, 0.392, 183, 0.005, 8, 0.643, 59, -0.019, 9, 0.063, 155, 0.06
  gispec6bl vco2init -gispec6, gispec6+1, 1.05, 512, gitabsize, gispec6
  gispec7 ftgen 0, 0, gitabsize, 19, 1, 0.986, 265, 0.068, 4, 0.776, 0, -0.568, 5, 0.721, 133, 0.037, 6, 0.344, 128, 0.462, 7, 0.544, 134, -0.508, 9, 0.57, 178, 0.104, 10, 0.303, 295, -0.001, 11, 0.344, 106, -0.067, 12, 0.066, 292, 0.104
  gispec7bl vco2init -gispec7, gispec7+1, 1.05, 512, gitabsize, gispec7
  gispec8 ftgen 0, 0, gitabsize, 19, 1, 0.986, 249, -0.086, 2, 0.975, 261, 0.345, 4, 0.977, 123, 0.076, 8, 0.987, 120, 0.364, 9, 1.0, 171, 0.087, 11, 0.287, 347, -0.002, 12, 0.178, 189, -0.264, 13, 0.153, 208, 0.214
  gispec8bl vco2init -gispec8, gispec8+1, 1.05, 512, gitabsize, gispec8
  gispec9 ftgen 0, 0, gitabsize, 9, 1, 1.0, 106, 2, 1.0, 59, 3, 0.801, 206, 6, 0.39, 54, 9, 0.485, 113, 11, 0.698, 224, 12, 0.417, 291, 15, 0.233, 195
  gispec9bl vco2init -gispec9, gispec9+1, 1.05, 512, gitabsize, gispec9
  gispec10 ftgen 0, 0, gitabsize, 19, 1, 1.0, 20, 0.393, 2, 1.0, 55, -0.124, 4, 1.0, 320, -0.075, 6, 1.0, 112, 0.256
  gispec10bl vco2init -gispec10, gispec10+1, 1.05, 512, gitabsize, gispec10
  gispec11 ftgen 0, 0, gitabsize, 19, 1, 1.0, 267, -0.469, 3, 0.971, 95, 0.088, 6, 0.929, 280, 0.157, 7, 1.0, 159, -0.065, 8, 0.532, 340, -0.097, 10, 0.514, 57, -0.145, 11, 0.59, 245, 0.207, 12, 0.264, 208, 0.852, 13, 0.232, 84, 0.031, 14, 0.155, 357, 0.046, 15, 0.299, 211, -0.832, 16, 0.213, 73, -0.081
  gispec11bl vco2init -gispec11, gispec11+1, 1.05, 512, gitabsize, gispec11
  gispec12 ftgen 0, 0, gitabsize, 9, 1, 1.0, 341, 3, 0.873, 47, 4, 0.924, 145, 5, 0.927, 50, 8, 0.877, 358, 10, 0.538, 314, 11, 0.19, 13, 12, 0.211, 104, 16, 0.173, 287, 17, 0.147, 213, 18, 0.183, 147, 20, 0.18, 224
  gispec12bl vco2init -gispec12, gispec12+1, 1.05, 512, gitabsize, gispec12
  gispec13 ftgen 0, 0, gitabsize, 19, 1, 0.915, 318, -0.08, 3, 0.934, 41, 0.119, 4, 0.768, 355, 0.046, 5, 0.767, 211, -0.035, 8, 0.768, 147, 0.018, 10, 0.883, 174, -0.067, 11, 0.905, 112, -0.045, 12, 0.739, 267, 0.035, 14, 0.058, 349, 0.023
  gispec13bl vco2init -gispec13, gispec13+1, 1.05, 512, gitabsize, gispec13
  gispec14 ftgen 0, 0, gitabsize, 9, 1, 1.0, 172, 2, 1.0, 134, 4, 1.0, 111, 6, 0.943, 351, 8, 1.0, 8, 9, 0.816, 345, 10, 0.701, 81, 13, 0.712, 53
  gispec14bl vco2init -gispec14, gispec14+1, 1.05, 512, gitabsize, gispec14
  gispec15 ftgen 0, 0, gitabsize, 9, 1, 0.318, 81, 2, 0.523, 75, 4, 0.416, 294, 7, 0.55, 239, 8, 0.5, 197, 11, 0.462, 266, 12, 0.524, 165, 13, 0.484, 307, 14, 0.188, 223, 16, 0.168, 122
  gispec15bl vco2init -gispec15, gispec15+1, 1.05, 512, gitabsize, gispec15
  gispec16 ftgen 0, 0, gitabsize, 9, 1, 1.0, 138, 3, 1.0, 237, 4, 0.88, 162, 6, 0.672, 24, 7, 0.474, 233, 8, 0.597, 39, 11, 0.427, 91, 12, 0.411, 232, 14, 0.754, 347, 15, 0.548, 86, 18, 0.367, 32, 19, 0.093, 225
  gispec16bl vco2init -gispec16, gispec16+1, 1.05, 512, gitabsize, gispec16
  gispec17 ftgen 0, 0, gitabsize, 9, 1, 1.0, 348, 2, 1.0, 331, 4, 1.0, 111, 6, 0.979, 350, 7, 1.0, 128, 9, 1.0, 133, 10, 1.0, 332, 12, 1.0, 75, 13, 1.0, 201, 15, 1.0, 338, 16, 0.753, 325, 18, 0.759, 173, 19, 0.772, 40, 20, 0.566, 354, 21, 0.56, 257, 22, 0.652, 254, 23, 0.686, 289, 24, 0.672, 317, 26, 0.704, 28, 27, 0.516, 238, 28, 0.056, 111
  gispec17bl vco2init -gispec17, gispec17+1, 1.05, 512, gitabsize, gispec17
  gispec18 ftgen 0, 0, gitabsize, 19, 1, 1.0, 15, 0.332, 2, 0.677, 206, 0.045, 3, 0.784, 64, -0.062, 6, 0.803, 1, -0.347, 7, 0.782, 165, 0.05, 8, 0.582, 178, -0.123, 9, 0.42, 57, 0.094, 11, 0.406, 211, -0.213
  gispec18bl vco2init -gispec18, gispec18+1, 1.05, 512, gitabsize, gispec18
  gispec19 ftgen 0, 0, gitabsize, 19, 1, 0.901, 239, -0.047, 2, 1.0, 245, -0.277, 3, 1.0, 180, -0.053, 5, 1.0, 288, 0.143, 6, 0.628, 292, 0.09, 8, 0.585, 138, -0.205, 11, 0.68, 160, 0.054, 13, 0.729, 70, 0.039, 15, 0.369, 178, -0.018, 16, 0.417, 337, 0.017, 17, 0.416, 270, 0.036, 19, 0.353, 132, 0.05, 20, 0.242, 133, -0.022, 22, 0.433, 323, 0.075, 24, 0.057, 51, 0.051, 25, 0.156, 245, -0.038, 26, 0.267, 260, 0.155, 27, 0.418, 23, -0.027, 28, 0.303, 91, -0.242
  gispec19bl vco2init -gispec19, gispec19+1, 1.05, 512, gitabsize, gispec19
  gispec20 ftgen 0, 0, gitabsize, 9, 1, 0.736, 175, 5, 0.72, 302, 6, 0.35, 316, 10, 0.223, 347, 12, 0.115, 56, 14, 0.11, 71, 15, 0.203, 48, 18, 0.212, 74, 19, 0.264, 215
  gispec20bl vco2init -gispec20, gispec20+1, 1.05, 512, gitabsize, gispec20
  gispec21 ftgen 0, 0, gitabsize, 19, 1, 1.0, 279, 0.056, 3, 1.0, 12, 0.342, 5, 1.0, 23, -0.031, 6, 1.0, 151, -0.164, 7, 0.918, 257, 0.14, 8, 0.982, 121, 0.04, 9, 1.0, 94, -0.694, 10, 0.79, 73, -0.4, 12, 0.843, 232, 0.14, 14, 0.949, 210, 0.163, 16, 0.99, 337, 0.08, 19, 0.619, 44, -0.038, 20, 0.247, 302, -0.118, 22, 0.247, 305, 0.132, 25, 0.352, 54, -0.014, 29, 0.41, 3, 0.228, 30, 0.311, 352, 0.017, 31, 0.306, 338, -0.495
  gispec21bl vco2init -gispec21, gispec21+1, 1.05, 512, gitabsize, gispec21
  gispec22 ftgen 0, 0, gitabsize, 19, 1, 1.0, 217, 0.152, 2, 0.795, 21, 0.249, 3, 1.0, 272, 0.089, 7, 0.621, 350, -0.194, 10, 0.338, 207, 0.14, 11, 0.522, 191, 0.22, 15, 0.913, 69, -0.249, 17, 0.997, 192, 0.026, 18, 0.962, 249, -0.046, 21, 1.0, 232, 0.004, 22, 0.959, 85, -0.347, 24, 0.809, 156, -0.424, 26, 0.871, 202, 0.159, 28, 0.185, 68, 0.063, 29, 0.339, 214, 0.085, 31, 0.202, 82, -0.194
  gispec22bl vco2init -gispec22, gispec22+1, 1.05, 512, gitabsize, gispec22
  gispec23 ftgen 0, 0, gitabsize, 19, 1, 0.977, 307, -0.092, 3, 1.0, 181, 0.022, 7, 1.0, 105, -0.067, 8, 1.0, 257, -0.06, 9, 1.0, 226, 0.054, 10, 0.967, 30, 0.031, 13, 0.866, 241, 0.143, 14, 1.0, 290, -0.176, 17, 0.875, 296, 0.191, 19, 0.44, 120, -0.615, 20, 0.722, 169, -0.454, 22, 0.704, 256, 0.051, 25, 0.754, 33, 0.036, 26, 0.779, 21, 0.038, 27, 0.437, 124, 0.025, 28, 0.682, 295, -0.221, 30, 0.921, 130, -0.255, 31, 1.0, 9, -0.194, 33, 0.805, 178, -0.021, 35, 0.871, 114, 0.115, 39, 1.0, 328, -0.281, 40, 0.909, 273, -0.82, 41, 0.926, 145, -0.09, 42, 1.0, 38, -0.158, 44, 1.0, 54, -0.206, 47, 1.0, 166, -0.231, 51, 0.555, 277, -0.426, 52, 0.155, 152, -0.265
  gispec23bl vco2init -gispec23, gispec23+1, 1.05, 512, gitabsize, gispec23
  gispec24 ftgen 0, 0, gitabsize, 9, 1, 0.801, 35, 2, 1.0, 167, 3, 0.636, 65, 4, 0.721, 352, 6, 0.99, 104, 7, 0.948, 67, 10, 0.978, 251, 11, 0.981, 342, 12, 1.0, 290, 14, 1.0, 229, 18, 1.0, 276, 20, 1.0, 214, 21, 0.685, 299, 22, 0.659, 353, 23, 0.587, 348, 24, 0.492, 321, 28, 0.778, 76, 29, 0.89, 178, 31, 0.743, 217, 33, 0.572, 30, 34, 0.595, 89, 35, 0.39, 44
  gispec24bl vco2init -gispec24, gispec24+1, 1.05, 512, gitabsize, gispec24
  gispec25 ftgen 0, 0, gitabsize, 19, 1, 0.845, 189, 0.097, 2, 0.8, 196, 0.042, 3, 0.874, 210, 0.149, 4, 0.784, 221, -0.351, 7, 0.588, 210, 0.02, 8, 0.631, 261, -0.258, 10, 0.668, 87, -0.201, 13, 0.832, 233, -0.384, 14, 0.782, 200, -0.464, 15, 0.324, 111, -0.162, 17, 0.435, 352, 0.097, 18, 0.43, 85, 0.037, 20, 0.505, 62, 0.029, 21, 0.538, 150, 0.023, 22, 0.718, 247, -0.294, 23, 0.731, 169, 0.06, 24, 0.72, 104, 0.013, 26, 0.578, 233, -1.999, 27, 0.742, 183, 0.145, 30, 0.768, 261, -0.253, 31, 0.828, 0, -0.026, 32, 0.611, 235, 0.035, 33, 0.601, 183, 0.025, 35, 0.415, 118, -0.936, 37, 0.409, 46, 0.244, 39, 0.316, 206, 0.057, 40, 0.236, 112, 0.222, 41, 0.117, 10, -0.006, 42, 0.056, 186, 0.104
  gispec25bl vco2init -gispec25, gispec25+1, 1.05, 512, gitabsize, gispec25
  gispec26 ftgen 0, 0, gitabsize, 19, 1, 1.0, 171, -0.339, 3, 0.57, 279, 0.014, 7, 0.59, 1, -0.131, 9, 0.714, 111, 0.012, 10, 0.664, 227, -0.02, 13, 0.639, 28, -0.046, 14, 0.657, 357, 0.192, 17, 0.559, 352, -0.116, 18, 0.63, 107, -0.324, 22, 0.55, 119, -0.681, 24, 0.557, 125, -0.311, 25, 0.37, 358, -0.186
  gispec26bl vco2init -gispec26, gispec26+1, 1.05, 512, gitabsize, gispec26
  gispec27 ftgen 0, 0, gitabsize, 19, 1, 1.0, 338, -1.195, 3, 1.0, 231, 0.111, 4, 1.0, 24, 0.169, 5, 1.0, 272, 0.122, 6, 0.944, 355, -0.145, 7, 0.866, 102, -0.596, 8, 0.964, 164, -0.014, 9, 0.827, 98, 0.15, 11, 0.751, 207, -0.354, 14, 0.887, 30, 0.343, 18, 0.903, 206, -0.414, 20, 0.902, 314, -0.1, 24, 0.958, 259, -0.1, 28, 1.0, 46, -0.275, 32, 1.0, 141, -0.615, 34, 1.0, 61, 0.017, 38, 1.0, 64, 0.032, 42, 1.0, 35, 0.059, 44, 0.838, 354, 0.164, 45, 0.586, 167, 0.072, 47, 0.81, 45, -0.198, 49, 0.895, 241, 0.16, 51, 1.0, 215, -0.48, 52, 1.0, 69, 0.044, 54, 1.0, 30, -0.169, 55, 0.925, 283, -0.064, 56, 0.602, 51, -0.141, 58, 0.691, 343, 0.104, 59, 0.695, 103, 0.01, 60, 0.752, 299, -0.403, 62, 0.97, 99, -0.002, 64, 1.0, 254, -0.025, 66, 0.805, 330, -0.218, 68, 1.0, 312, -0.195, 69, 1.0, 342, 0.057, 72, 0.673, 272, -0.394, 74, 0.651, 347, -0.027, 75, 0.654, 55, 0.006, 77, 0.572, 244, 0.066, 78, 0.625, 53, 0.128, 80, 0.628, 316, -0.08, 82, 0.711, 39, -0.296, 83, 0.549, 229, 0.195, 84, 0.634, 148, 0.197, 88, 0.885, 349, 0.134, 91, 0.223, 163, 0.124
  gispec27bl vco2init -gispec27, gispec27+1, 1.05, 512, gitabsize, gispec27
  gispec28 ftgen 0, 0, gitabsize, 19, 1, 1.0, 280, 0.068, 4, 1.0, 75, 0.158, 8, 0.645, 73, 0.002, 10, 0.598, 126, -0.016, 13, 0.738, 198, -0.177, 17, 0.745, 294, 0.066, 19, 0.793, 130, -0.907, 20, 0.1, 353, 0.105, 21, 0.1, 144, -0.128, 22, 0.304, 227, 0.231, 25, 0.314, 315, -0.003, 27, 0.342, 44, -0.075, 29, 0.164, 70, -0.142, 31, 0.076, 258, 0.029, 33, 0.327, 139, -0.028, 34, 0.322, 52, 0.081, 38, 0.094, 15, -0.063, 39, 0.03, 268, 0.038, 41, 0.127, 33, -0.36
  gispec28bl vco2init -gispec28, gispec28+1, 1.05, 512, gitabsize, gispec28
  gispec29 ftgen 0, 0, gitabsize, 19, 1, 0.808, 157, 0.069, 3, 0.983, 205, -0.06, 4, 1.0, 343, -0.564, 5, 1.0, 211, -0.107, 8, 0.957, 320, 0.163, 9, 1.0, 96, 0.028, 10, 1.0, 353, 0.617, 14, 1.0, 253, -0.103, 15, 1.0, 186, 0.184, 16, 1.0, 347, 0.227, 17, 0.937, 261, -0.039, 18, 0.895, 203, -0.002, 19, 0.903, 305, -0.357, 22, 0.862, 335, 0.082, 23, 0.639, 29, 0.096, 25, 0.677, 143, -0.266, 26, 0.881, 157, -0.167, 28, 1.0, 328, 0.026, 30, 0.889, 189, 0.028, 32, 0.935, 108, -0.15, 33, 0.498, 123, 0.03, 34, 0.391, 272, 0.394, 36, 0.607, 111, -0.611, 37, 0.434, 221, -0.062, 38, 0.473, 209, -0.006, 40, 0.554, 171, -0.093, 41, 0.692, 21, -0.075, 42, 0.337, 288, 0.085, 44, 0.19, 189, -0.096, 45, 0.277, 51, -0.052, 47, 0.552, 10, -0.188, 49, 0.082, 54, -0.017
  gispec29bl vco2init -gispec29, gispec29+1, 1.05, 512, gitabsize, gispec29
  gispec30 ftgen 0, 0, gitabsize, 19, 1, 1.0, 220, 0.162, 4, 1.0, 280, 0.101, 7, 1.0, 352, 0.008, 9, 1.0, 73, 0.171, 10, 1.0, 118, -0.046, 14, 0.577, 281, 0.032, 15, 0.693, 30, -0.174, 16, 0.794, 292, -0.029, 18, 0.544, 336, 0.087, 20, 0.419, 92, -0.547, 21, 0.014, 58, 0.13, 22, 0.201, 2, -0.01, 23, 0.34, 284, -0.105, 27, 0.236, 131, -0.066, 30, 0.265, 184, -0.308, 33, 0.274, 234, -0.193, 36, 0.315, 350, -0.12, 37, 0.208, 234, -0.248, 38, 0.22, 244, -0.061, 39, 0.469, 43, 0.058, 40, 0.405, 43, 0.149, 42, 0.81, 353, -0.11, 43, 0.821, 226, -0.197, 44, 0.825, 25, -0.0, 47, 0.851, 51, 0.01, 48, 0.158, 303, -0.223, 50, 0.096, 243, 0.307
  gispec30bl vco2init -gispec30, gispec30+1, 1.05, 512, gitabsize, gispec30
  gihamming ftgen 0, 0, gitabsize, 20, 1, 1
  gihammingbl vco2init -gihamming, gihamming+1, 1.05, 512, gitabsize, gihamming
  giblackmanharris ftgen 0, 0, gitabsize, 20, 5, 1
  giblackmanharrisbl vco2init -giblackmanharris, giblackmanharris+1, 1.05, 512, gitabsize, giblackmanharris
  gisync ftgen 0, 0, gitabsize, 20, 9, 1
  gisyncbl vco2init -gisync, gisync+1, 1.05, 512, gitabsize, gisync
  gibartlett ftgen 0, 0, gitabsize, 20, 3, 1
  gibartlettbl vco2init -gibartlett, gibartlett+1, 1.05, 512, gitabsize, gibartlett
  gigaussian ftgen 0, 0, gitabsize, 20, 6, 1, 1
  gigaussianbl vco2init -gigaussian, gigaussian+1, 1.05, 512, gitabsize, gigaussian

  ; accomp

  gimewavf1 ftgen 0, 0, 32768, 10, 1                                                ; sine wave
  gimewavf2 ftgen 0, 0, 32768, 9, 1, 1, 0, 3, .333, 180, 5, .2, 0, 7, .143, 180, 9, .111, 0       ; triangle wave

  gasigl init 0
  gasigr init 0

  gkcurrpitch init 0

  opcode PanLFO, a, kk
    kpanlforate, kpan xin

      if (kpanlforate == 0) then
        apanlfo = 0
      else
        apanlfo = oscil:a(0.5, kpanlforate, gisine) + 0.5
      endif
      kpanlfoscale = kpan*(-2) + 1
    apan = (kpan + (apanlfo * kpanlfoscale)) * $M_PI_2

    xout apan
  endop

  opcode PanLFO2, aa, akk
    asig, kpanlforate, kpan xin

        apan PanLFO kpanlforate, kpan
      asigl = asig * cos(apan)
      asigr = asig * sin(apan)

    xout asigl, asigr
  endop

  opcode PanLFO4, aaaa, aakk
    asigl, asigr, kpanlforate, kpan xin

        apan PanLFO kpanlforate, kpan
      asigll = asigl * cos(apan)
      asiglr = asigl * sin(apan)
      asigrl = asigr * cos(apan)
      asigrr = asigr * sin(apan)

    xout asigll, asiglr, asigrl, asigrr
  endop

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
    elseif (kwavnum == 10) then
      kwav vco2ft kfrq, -gispec1
    elseif (kwavnum == 11) then
      kwav vco2ft kfrq, -gispec2
    elseif (kwavnum == 12) then
      kwav vco2ft kfrq, -gispec3
    elseif (kwavnum == 13) then
      kwav vco2ft kfrq, -gispec4
    elseif (kwavnum == 14) then
      kwav vco2ft kfrq, -gispec5
    elseif (kwavnum == 15) then
      kwav vco2ft kfrq, -gispec6
    elseif (kwavnum == 16) then
      kwav vco2ft kfrq, -gispec7
    elseif (kwavnum == 17) then
      kwav vco2ft kfrq, -gispec8
    elseif (kwavnum == 18) then
      kwav vco2ft kfrq, -gispec9
    elseif (kwavnum == 19) then
      kwav vco2ft kfrq, -gispec10
    elseif (kwavnum == 20) then
      kwav vco2ft kfrq, -gispec11
    elseif (kwavnum == 21) then
      kwav vco2ft kfrq, -gispec12
    elseif (kwavnum == 22) then
      kwav vco2ft kfrq, -gispec13
    elseif (kwavnum == 23) then
      kwav vco2ft kfrq, -gispec14
    elseif (kwavnum == 24) then
      kwav vco2ft kfrq, -gispec15
    elseif (kwavnum == 25) then
      kwav vco2ft kfrq, -gispec16
    elseif (kwavnum == 26) then
      kwav vco2ft kfrq, -gispec17
    elseif (kwavnum == 27) then
      kwav vco2ft kfrq, -gispec18
    elseif (kwavnum == 28) then
      kwav vco2ft kfrq, -gispec19
    elseif (kwavnum == 29) then
      kwav vco2ft kfrq, -gispec20
    elseif (kwavnum == 30) then
      kwav vco2ft kfrq, -gispec21
    elseif (kwavnum == 31) then
      kwav vco2ft kfrq, -gispec22
    elseif (kwavnum == 32) then
      kwav vco2ft kfrq, -gispec23
    elseif (kwavnum == 33) then
      kwav vco2ft kfrq, -gispec24
    elseif (kwavnum == 34) then
      kwav vco2ft kfrq, -gispec25
    elseif (kwavnum == 35) then
      kwav vco2ft kfrq, -gispec26
    elseif (kwavnum == 36) then
      kwav vco2ft kfrq, -gispec27
    elseif (kwavnum == 37) then
      kwav vco2ft kfrq, -gispec28
    elseif (kwavnum == 38) then
      kwav vco2ft kfrq, -gispec29
    elseif (kwavnum == 39) then
      kwav vco2ft kfrq, -gispec30
    elseif (kwavnum == 40) then
      kwav vco2ft kfrq, -gihamming
    elseif (kwavnum == 41) then
      kwav vco2ft kfrq, -giblackmanharris
    elseif (kwavnum == 42) then
      kwav vco2ft kfrq, -gisync
    elseif (kwavnum == 43) then
      kwav vco2ft kfrq, -gibartlett
    elseif (kwavnum == 44) then
      kwav vco2ft kfrq, -gigaussian
    endif

    xout kwav
  endop

  opcode FancyVibr, k, kkkkkkiiO
    ktoggle, ktempofrac, kbpm, kwave, kamp, kfreq, isin, itri, iadj xin

    if (kamp != 0) then
      iTempoFracs[] fillarray 1, 2, 3, 4, 6, 8, 9, 12, 16, 27, 32, 81

      if (ktoggle == 1) then
        kfreqt = iTempoFracs[ktempofrac] * kbpm
        if (kwave == 0) then
          kvib = poscil:k(kamp, kfreqt) + iadj
        else
          kvib = poscil:k(kamp, kfreqt, itri) + iadj
        endif
      else
        if (kwave == 0) then
          kvib = vibr:k(kamp, kfreq, isin) + iadj
        else
          kvib = vibr:k(kamp, kfreq, itri) + iadj
        endif
      endif
    else
      kvib = 0
    endif

    xout kvib
  endop

  opcode FancyPhaseVibr, k, kkkkkkii
    ktoggle, ktempofrac, kbpm, kwave, kphase, kfreq, isin, itri xin

    if ((kfreq != 0) || (ktoggle == 1)) then
        kamp = ((kphase * (-1) / 0.5) + 0.5) / 2
      kphasevib FancyVibr ktoggle, ktempofrac, kbpm, kwave, kamp, kfreq, gimewavf1, gimewavf2, kamp
    else
      kphasevib = 0
    endif

    xout kphasevib
  endop

  ; the values in these tables were based on Adam Szabo's paper "How to Emulate
  ; the Super Saw" studying the Roland JP-8000
  ; https://www.nada.kth.se/utbildning/grukth/exjobb/rapportlistor/2010/rapporter10/szabo_adam_10131.pdf

  gidetune ftgen 0, 0, 16384, 8, \
                 0, 971, \
                 0.00967268, 1101, \
                 0.0220363, 1101, \
                 0.0339636, 1101, \
                 0.0467636, 1101, \
                 0.0591273, 1101, \
                 0.0714909, 1101, \
                 0.0838545, 1101, \
                 0.0967273, 1101, \
                 0.121527, 1101, \
                 0.147127, 1101, \
                 0.193455, 1101, \
                 0.243418, 1101, \
                 0.2933815, 1101, \
                 0.343345, 1099, \
                 1, 1

  gimixcenter ftgen 0, 0, 16384, 8, \
                    1, 971, \
                    0.965, 1101, \
                    0.93, 1101, \
                    0.901, 1101, \
                    0.86, 1101, \
                    0.83, 1101, \
                    0.795, 1101, \
                    0.76, 1101, \
                    0.72, 1101, \
                    0.69, 1101, \
                    0.65, 1101, \
                    0.62, 1101, \
                    0.585, 1101, \
                    0.55, 1101, \
                    0.51, 1099, \
                    0.445, 1

  gimixside ftgen 0, 0, 16384, 8, \
                  0, 971, \
                  0.12, 1101, \
                  0.19, 1101, \
                  0.25, 1101, \
                  0.31, 1101, \
                  0.37, 1101, \
                  0.42, 1101, \
                  0.46, 1101, \
                  0.5, 1101, \
                  0.53, 1101, \
                  0.56, 1101, \
                  0.58, 1101, \
                  0.59, 1101, \
                  0.6, 1101, \
                  0.605, 1099, \
                  0.59, 1

  opcode PolyDetune, k, ik
    ifreqfactamt, kdetune xin

    kfreqfact = 1 + (ifreqfactamt * table:k(kdetune, gidetune, 1))

    xout kfreqfact
  endop

  opcode FMOsc, aa, kkkkkkkkkkkkkkkkkkkkkkkkikkkk
    ktoggle1, ktoggle2, ktoggle3, koscfrq1, kfmratio1, kfmfine1, kphase1, kphasevib1, kwav1, kfmamt1, koscfrq2, kfmratio2, kfmfine2, kphase2, kphasevib2, kwav2, kfmamt2, koscfrq3, kfmratio3, kfmfine3, kphase3, kphasevib3, kwav3, kfmamt3, ioscid, kvoices, kpoldetune, kspread, kmix xin

    ; set the main settings based on which oscillator is being processed
    if     (ioscid == 1) then
      koscfrq   = koscfrq1
      kphase    = kphase1
      kphasevib = kphasevib1
      kwav      = kwav1
      ktoggle   = ktoggle1
    elseif (ioscid == 2) then
      koscfrq   = koscfrq2
      kphase    = kphase2
      kphasevib = kphasevib2
      kwav      = kwav2
      ktoggle   = ktoggle2
    elseif (ioscid == 3) then
      koscfrq   = koscfrq3
      kphase    = kphase3
      kphasevib = kphasevib3
      kwav      = kwav3
      ktoggle   = ktoggle3
    endif

    if (ktoggle == 1) then
        iabovefreqfact1amt =  0.01991221
        ibelowfreqfact1amt = -0.01952356 
        iabovefreqfact2amt =  0.06216538
        ibelowfreqfact2amt = -0.06288439
        iabovefreqfact3amt =  0.10745242
        ibelowfreqfact3amt = -0.11002313

        kabovefreq1 = koscfrq * PolyDetune:k(iabovefreqfact1amt, kpoldetune)
        kbelowfreq1 = koscfrq * PolyDetune:k(ibelowfreqfact1amt, kpoldetune)
        kabovefreq2 = koscfrq * PolyDetune:k(iabovefreqfact2amt, kpoldetune)
        kbelowfreq2 = koscfrq * PolyDetune:k(ibelowfreqfact2amt, kpoldetune)
        kabovefreq3 = koscfrq * PolyDetune:k(iabovefreqfact3amt, kpoldetune)
        kbelowfreq3 = koscfrq * PolyDetune:k(ibelowfreqfact3amt, kpoldetune)

       ; clone each running oscillator for the sake of FM
        if (ktoggle1 == 1) then
          afmosc1 tablekt phasor:a(koscfrq1*(kfmratio1+kfmfine1))+(kphase1+kphasevib1), Wavetable:k(koscfrq1, kwav1), 1, 0, 1
        else
         afmosc1 = 0
        endif
        if (ktoggle2 == 1) then
          afmosc2 tablekt phasor:a(koscfrq2*(kfmratio2+kfmfine2))+(kphase2+kphasevib2), Wavetable:k(koscfrq2, kwav2), 1, 0, 1
        else
         afmosc2 = 0
        endif
        if (ktoggle3 == 1) then
          afmosc3 tablekt phasor:a(koscfrq3*(kfmratio3+kfmfine3))+(kphase3+kphasevib3), Wavetable:k(koscfrq3, kwav3), 1, 0, 1
        else
         afmosc3 = 0
        endif
      ; compute the main output signal
      aosc tablekt phasor:a(koscfrq)+(kphase+kphasevib)+(afmosc1*kfmamt1)+(afmosc2*kfmamt2)+(afmosc3*kfmamt3), Wavetable:k(koscfrq, kwav), 1, 0, 1

      ; compute poly voices
      if (kvoices == 3) then
        aoscabove1 tablekt phasor:a(kabovefreq1)+(afmosc1*kfmamt1)+(afmosc2*kfmamt2)+(afmosc3*kfmamt3), Wavetable:k(kabovefreq1, kwav), 1, random:i(0,1), 1
        aoscbelow1 tablekt phasor:a(kbelowfreq1)+(afmosc1*kfmamt1)+(afmosc2*kfmamt2)+(afmosc3*kfmamt3), Wavetable:k(kbelowfreq1, kwav), 1, random:i(0,1), 1

        aoscabove2 = 0
        aoscabove3 = 0
        aoscbelow2 = 0
        aoscbelow3 = 0
      elseif (kvoices == 5) then
        aoscabove1 tablekt phasor:a(kabovefreq1)+(afmosc1*kfmamt1)+(afmosc2*kfmamt2)+(afmosc3*kfmamt3), Wavetable:k(kabovefreq1, kwav), 1, random:i(0, 1), 1
        aoscbelow1 tablekt phasor:a(kbelowfreq1)+(afmosc1*kfmamt1)+(afmosc2*kfmamt2)+(afmosc3*kfmamt3), Wavetable:k(kbelowfreq1, kwav), 1, random:i(0, 1), 1
        aoscabove2 tablekt phasor:a(kabovefreq2)+(afmosc1*kfmamt1)+(afmosc2*kfmamt2)+(afmosc3*kfmamt3), Wavetable:k(kabovefreq2, kwav), 1, random:i(0, 1), 1
        aoscbelow2 tablekt phasor:a(kbelowfreq2)+(afmosc1*kfmamt1)+(afmosc2*kfmamt2)+(afmosc3*kfmamt3), Wavetable:k(kbelowfreq2, kwav), 1, random:i(0, 1), 1

        aoscabove3 = 0
        aoscbelow3 = 0
      elseif (kvoices == 7) then
        aoscabove1 tablekt phasor:a(kabovefreq1)+(afmosc1*kfmamt1)+(afmosc2*kfmamt2)+(afmosc3*kfmamt3), Wavetable:k(kabovefreq1, kwav), 1, random:i(0, 1), 1
        aoscbelow1 tablekt phasor:a(kbelowfreq1)+(afmosc1*kfmamt1)+(afmosc2*kfmamt2)+(afmosc3*kfmamt3), Wavetable:k(kbelowfreq1, kwav), 1, random:i(0, 1), 1
        aoscabove2 tablekt phasor:a(kabovefreq2)+(afmosc1*kfmamt1)+(afmosc2*kfmamt2)+(afmosc3*kfmamt3), Wavetable:k(kabovefreq2, kwav), 1, random:i(0, 1), 1
        aoscbelow2 tablekt phasor:a(kbelowfreq2)+(afmosc1*kfmamt1)+(afmosc2*kfmamt2)+(afmosc3*kfmamt3), Wavetable:k(kbelowfreq2, kwav), 1, random:i(0, 1), 1
        aoscabove3 tablekt phasor:a(kabovefreq3)+(afmosc1*kfmamt1)+(afmosc2*kfmamt2)+(afmosc3*kfmamt3), Wavetable:k(kabovefreq3, kwav), 1, random:i(0, 1), 1
        aoscbelow3 tablekt phasor:a(kbelowfreq3)+(afmosc1*kfmamt1)+(afmosc2*kfmamt2)+(afmosc3*kfmamt3), Wavetable:k(kbelowfreq3, kwav), 1, random:i(0, 1), 1
      else
        aoscabove1 = 0
        aoscbelow1 = 0
        aoscabove2 = 0
        aoscabove3 = 0
        aoscbelow2 = 0
        aoscbelow3 = 0
      endif

    else
      aosc = 0
      aoscabove1 = 0
      aoscbelow1 = 0
      aoscabove2 = 0
      aoscabove3 = 0
      aoscbelow2 = 0
      aoscbelow3 = 0
    endif

    kspreadabove1 = kspread*0.167    + 0.5
    kspreadbelow1 = kspread*(-0.167) + 0.5
    kspreadabove2 = kspread*0.333    + 0.5
    kspreadbelow2 = kspread*(-0.333) + 0.5
    kspreadabove3 = kspread*0.5      + 0.5
    kspreadbelow3 = kspread*(-0.5)   + 0.5

    aoscabove1l, aoscabove1r PanLFO2 aoscabove1, 0, kspreadabove1
    aoscbelow1l, aoscbelow1r PanLFO2 aoscbelow1, 0, kspreadbelow1
    aoscabove2l, aoscabove2r PanLFO2 aoscabove2, 0, kspreadabove2
    aoscbelow2l, aoscbelow2r PanLFO2 aoscbelow2, 0, kspreadbelow2
    aoscabove3l, aoscabove3r PanLFO2 aoscabove3, 0, kspreadabove3
    aoscbelow3l, aoscbelow3r PanLFO2 aoscbelow3, 0, kspreadbelow3

    asidesl = aoscbelow1l+aoscabove1l+aoscbelow2l+aoscabove2l+aoscbelow3l+aoscabove3l
    asidesr = aoscbelow1r+aoscabove1r+aoscbelow2r+aoscabove2r+aoscbelow3r+aoscabove3r

    kcentermix table kmix, gimixcenter, 1
    ksidemix   table kmix, gimixside, 1

    xout aosc*kcentermix + asidesl*ksidemix, aosc*kcentermix + asidesr*ksidemix
  endop

  instr 1
    ifrq   = p4 ; comes from midi
    iscale = p5
    kbpmchn chnget "HOST_BPM"
    kbpm = kbpmchn / 60
    kwav1   chnget "wave1" ; the number of an f-table
    kwav2   chnget "wave2"
    kwav3   chnget "wave3"
    kamp1   chnget "amp1"
    kamp2   chnget "amp2"
    kamp3   chnget "amp3"
    kosc1pan chnget "osc1pan"
    kosc2pan chnget "osc2pan"
    kosc3pan chnget "osc3pan"
    kosc1panlfo chnget "osc1panlfo"
    kosc2panlfo chnget "osc2panlfo"
    kosc3panlfo chnget "osc3panlfo"
    koscgain   chnget "oscgain"
    knoisetog  chnget "noisetog"
    knfil   chnget "noisefilt" ; .9999 is white noise, 0 is pink noise, -.9999 is brown noise
    knamp      chnget "noiseamp"
    kpan       chnget "pan"
    kmod1      chnget "fmod1" ; mods are frq * mod, so 1 is unchanged
    kmod2      chnget "fmod2"
    kmod3      chnget "fmod3"
    kpitchb    chnget "pitchbend"
    kpitchbr   chnget "pitchbrange"
    ipitchb    chnget "pitchbend"
    ipitchbr   chnget "pitchbrange"
    ipitchenvtog chnget "pitchenvtog"
    ipitchenva chnget "pitchenvatt"
    ipitchenvd chnget "pitchenvdec"
    ipitchenvs chnget "pitchenvsus"
    ipitchenvr chnget "pitchenvrel"
    ipitchenvrf chnget "pitchenvrelfloor"
    ipitchenvash =    chnget:i("pitchenvattshape") * -1
    ipitchenvdsh chnget "pitchenvdecshape"
    ipitchenvrsh chnget "pitchenvrelshape"
    ipitchenvfrom chnget "pitchenvfrom"
    ipitchenvto chnget "pitchenvto"
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
    kphase1    chnget "osc1phase"
    kphase2    chnget "osc2phase"
    kphase3    chnget "osc3phase"
    kphasefrq1 chnget "phasefreq1"
    kphasefrq2 chnget "phasefreq2"
    kphasefrq3 chnget "phasefreq3"
    kphfrqtog1 chnget "phasefreq1tog"
    kphfrqtog2 chnget "phasefreq2tog"
    kphfrqtog3 chnget "phasefreq3tog"
    kphfrqtem1 chnget "phasefreqt1"
    kphfrqtem2 chnget "phasefreqt2"
    kphfrqtem3 chnget "phasefreqt3"
    kphwave1   chnget "phasewave1"
    kphwave2   chnget "phasewave2"
    kphwave3   chnget "phasewave3"
    koscvoices1 chnget "oscvoices1"
    koscpoldet1    chnget "oscpoldet1"
    koscspread1    chnget "oscspread1"
    kmix1       chnget "oscmix1"
    koscvoices2 chnget "oscvoices2"
    koscpoldet2    chnget "oscpoldet2"
    koscspread2    chnget "oscspread2"
    kmix2       chnget "oscmix2"
    koscvoices3 chnget "oscvoices3"
    koscpoldet3    chnget "oscpoldet3"
    koscspread3    chnget "oscspread3"
    kmix3       chnget "oscmix3"
    kfmamt11   chnget "fmamt11"
    kfmamt12   chnget "fmamt12"
    kfmamt13   chnget "fmamt13"
    kfmamt21   chnget "fmamt21"
    kfmamt22   chnget "fmamt22"
    kfmamt23   chnget "fmamt23"
    kfmamt31   chnget "fmamt31"
    kfmamt32   chnget "fmamt32"
    kfmamt33   chnget "fmamt33"
    kfmratio11 chnget "fmrat11"
    kfmratio12 chnget "fmrat12"
    kfmratio13 chnget "fmrat13"
    kfmratio21 chnget "fmrat21"
    kfmratio22 chnget "fmrat22"
    kfmratio23 chnget "fmrat23"
    kfmratio31 chnget "fmrat31"
    kfmratio32 chnget "fmrat32"
    kfmratio33 chnget "fmrat33"
    kfmfine11  chnget "fmfine11"
    kfmfine12  chnget "fmfine12"
    kfmfine13  chnget "fmfine13"
    kfmfine21  chnget "fmfine21"
    kfmfine22  chnget "fmfine22"
    kfmfine23  chnget "fmfine23"
    kfmfine31  chnget "fmfine31"
    kfmfine32  chnget "fmfine32"
    kfmfine33  chnget "fmfine33"
    kosc1tog   chnget "osc1tog"
    kosc2tog   chnget "osc2tog"
    kosc3tog   chnget "osc3tog"
    kfilttog   chnget "filttog"
    kftype     chnget "filttype"
    kfcut      chnget "filtcut"
    kfwidth    chnget "filtwidth"
    kfres      chnget "filtres" ; generally <1, higher values might cause aliasing
    kftrack    chnget "filttrack"
    kfdist     chnget "filtdist" ; amount of filter distortion, 1–100
    ifenva     chnget "filtenvatt" ; duration of attack
    ifenvd     chnget "filtenvdec" ; duration of decay
    ifenvs     chnget "filtenvsus" ; level of sustain
    ifenvr     chnget "filtenvrel" ; duration of release
    ifenvash   =      chnget:i("filtenvattshape") * -1
    ifenvdsh   chnget "filtenvdecshape"
    ifenvrsh   chnget "filtenvrelshape"
    ienva      chnget "envatt" ; duration of attack
    ienvd      chnget "envdec" ; duration of decay
    ienvr      chnget "envrel" ; duration of release
    ienvs      chnget "envsus" ; level of sustain
    ienvash    =      chnget:i("envattshape") * -1
    ienvdsh    chnget "envdecshape"
    ienvrsh    chnget "envrelshape"

    ; use an xtratim/release pair for the envelopes,
    ; because multiple linsegr/expsegr opcodes cause
    ; serious performance problems
    ;
    ; maybe should account for pitch env here as well
    if (ienvr <= ifenvr) then
      xtratim ienvr
    else
      xtratim ifenvr
    endif
    krel release

    kcurramp   init 0
    kcurrcut   init 0
    kcurrpitch init 0

    if (ipitchenvtog == 1) then
            if     (ipitchenvfrom == 1) then
              ipitchfloor = 0
            elseif (ipitchenvfrom == 2) then
              ipitchfloor = ipitchbr * ipitchb
            elseif (ipitchenvfrom == 3) then
              ipitchfloor = -ipitchbr
            else
              ipitchfloor = ipitchbr
            endif

            if     (ipitchenvto == 1) then
              ipitchceil = 0
            elseif (ipitchenvto == 2) then
              ipitchceil = ipitchbr * ipitchb
            elseif (ipitchenvto == 3) then
              ipitchceil = -ipitchbr
            else
              ipitchceil = ipitchbr
            endif

            isecondpart = abs(ipitchfloor - ipitchceil) * (1 - ipitchenvs)
          if (ipitchceil == 0) then
            if (ipitchfloor > 0) then
              ipitchenvsus = isecondpart
            elseif (ipitchfloor < 0) then
              ipitchenvsus = -(isecondpart)
            else
              ipitchenvsus = 0
            endif
          elseif (ipitchceil > 0) then
            ipitchenvsus = ipitchceil - isecondpart
          else
            ipitchenvsus = ipitchceil + isecondpart
          endif

          if     (ipitchenvrf == 1) then
            ipitchenvrfloor = 0
          elseif (ipitchenvrf == 2) then
            ipitchenvrfloor = ipitchbr * ipitchb
          elseif (ipitchenvrf  == 3) then
            ipitchenvrfloor = -ipitchbr
          else
            ipitchenvrfloor = ipitchbr
          endif

          krelchanged changed krel
          if (krel == 0) then
            kpitchenv transeg ipitchfloor, ipitchenva, ipitchenvash, ipitchceil, ipitchenvd, ipitchenvdsh, ipitchenvsus
            gkcurrpitch = kpitchenv
            kpitch = semitone(kpitchenv)
            kfrq = ifrq * kpitch
          elseif (krelchanged == 1) then
            reinit calcrenv
          else
            calcrenv:
              icurrpitch = i(gkcurrpitch)
              kpitchenvrel transeg icurrpitch, ipitchenvr, ipitchenvrsh, ipitchenvrfloor
              kpitch = semitone(kpitchenvrel)
              kfrq = ifrq * kpitch
              rireturn
          endif
    else
      kpitch = semitone(kpitchbr * kpitchb)
      kfrq = ifrq * kpitch
    endif

          kvib1 FancyVibr kvib1fttog, kvib1ft, kbpm, kvib1w, kvib1a, kvib1f, gimewavf1, gimewavf2
        kosc1frq = (kfrq*kmod1) + kvib1
        kphasevib1 FancyPhaseVibr kphfrqtog1, kphfrqtem1, kbpm, kphwave1, kphase1, kphasefrq1, gimewavf1, gimewavf2

          kvib2 FancyVibr kvib2fttog, kvib2ft, kbpm, kvib2w, kvib2a, kvib2f, gimewavf1, gimewavf2
        kosc2frq = (kfrq*kmod2) + kvib2
        kphasevib2 FancyPhaseVibr kphfrqtog2, kphfrqtem2, kbpm, kphwave2, kphase2, kphasefrq2, gimewavf1, gimewavf2

          kvib3 FancyVibr kvib3fttog, kvib3ft, kbpm, kvib3w, kvib3a, kvib3f, gimewavf1, gimewavf2
        kosc3frq = (kfrq*kmod3) + kvib3
        kphasevib3 FancyPhaseVibr kphfrqtog3, kphfrqtem3, kbpm, kphwave3, kphase3, kphasefrq3, gimewavf1, gimewavf2

      aosc1l, aosc1r FMOsc kosc1tog, kosc2tog, kosc3tog, kosc1frq, kfmratio11, kfmfine11, kphase1, kphasevib1, kwav1, kfmamt11, kosc2frq, kfmratio12, kfmfine12, kphase2, kphasevib2, kwav2, kfmamt12, kosc3frq, kfmratio13, kfmfine13, kphase3, kphasevib3, kwav3, kfmamt13, 1, koscvoices1, koscpoldet1, koscspread1, kmix1

      aosc2l, aosc2r FMOsc kosc1tog, kosc2tog, kosc3tog, kosc1frq, kfmratio21, kfmfine21, kphase1, kphasevib1, kwav1, kfmamt21, kosc2frq, kfmratio22, kfmfine22, kphase2, kphasevib2, kwav2, kfmamt22, kosc3frq, kfmratio23, kfmfine23, kphase3, kphasevib3, kwav3, kfmamt23, 2, koscvoices2, koscpoldet2, koscspread2, kmix3

      aosc3l, aosc3r FMOsc kosc1tog, kosc2tog, kosc3tog, kosc1frq, kfmratio31, kfmfine31, kphase1, kphasevib1, kwav1, kfmamt31, kosc2frq, kfmratio32, kfmfine32, kphase2, kphasevib2, kwav2, kfmamt32, kosc3frq, kfmratio33, kfmfine33, kphase3, kphasevib3, kwav3, kfmamt33, 3, koscvoices3, koscpoldet3, koscspread3, kmix2


      if ((knoisetog == 1) && (knamp > 0)) then
        anoise noise   knamp*koscgain, knfil * (-1)
      else
        anoise = 0
      endif

      aosc1ll, aosc1lr, aosc1rl, aosc1rr PanLFO4 aosc1l, aosc1r, kosc1panlfo, kosc1pan
      aosc2ll, aosc2lr, aosc2rl, aosc2rr PanLFO4 aosc2l, aosc2r, kosc2panlfo, kosc2pan
      aosc3ll, aosc3lr, aosc3rl, aosc3rr PanLFO4 aosc3l, aosc3r, kosc3panlfo, kosc3pan

      aosc1l = aosc1ll + aosc1rl
      aosc1r = aosc1lr + aosc1rr

      asigprefiltl  = ((aosc1l*kamp1*koscgain) + (aosc2l*kamp2*koscgain) + (aosc3l*kamp3*koscgain) + anoise) / 4
      asigprefiltr  = ((aosc1r*kamp1*koscgain) + (aosc2r*kamp2*koscgain) + (aosc3r*kamp3*koscgain) + anoise) / 4

    if (kfilttog == 1) then
        if (kftrack == 1) then
          kfcut = kfrq
        endif
        if (krel == 1) then
          kfiltenv = kcurrcut * transeg:k(1, ifenvr, ifenvrsh, 0) ; r
        else
          kfiltenv transeg 0, ifenva, ifenvash, 1, ifenvd, ifenvdsh, ifenvs ; ads
          kcurrcut = kfiltenv
        endif

      if (kftype == 0) then
            asigfilt1l tonex asigprefiltl, kfcut*kfiltenv
            asigfilt2l lpf18 asigprefiltl, kfcut*kfiltenv, kfres, kfdist
            asigfilt1r tonex asigprefiltr, kfcut*kfiltenv
            asigfilt2r lpf18 asigprefiltr, kfcut*kfiltenv, kfres, kfdist
          afilt2vol = kfres / 1.5
          afilt1vol = 1 - afilt2vol
        asigfiltl = (asigfilt1l * afilt1vol) + (asigfilt2l * afilt2vol)
        asigfiltr = (asigfilt1r * afilt1vol) + (asigfilt2r * afilt2vol)
      else
                asigfilt111l tonex asigprefiltl, (kfcut+kfwidth)*kfiltenv, 3
                asigfilt112l lpf18 asigprefiltl, (kfcut+kfwidth)*kfiltenv, kfres, kfdist
                asigfilt111r tonex asigprefiltr, (kfcut+kfwidth)*kfiltenv, 3
                asigfilt112r lpf18 asigprefiltr, (kfcut+kfwidth)*kfiltenv, kfres, kfdist
              afilt112vol = kfres / 1.5
              afilt111vol = 1 - afilt112vol
            asigfilt11l = (asigfilt111l * afilt111vol) + (asigfilt112l * afilt112vol)
            asigfilt11r = (asigfilt111r * afilt111vol) + (asigfilt112r * afilt112vol)
                ksigfilt12cutprezero = kfcut - kfwidth
              if (ksigfilt12cutprezero < 0) then
                ksigfilt12cut = 0
              else
                ksigfilt12cut = ksigfilt12cutprezero
              endif
            asigfilt12l  atonex asigfilt11l, ksigfilt12cut*kfiltenv, 3
            asigfilt12r  atonex asigfilt11r, ksigfilt12cut*kfiltenv, 3
         asigfiltl = asigfilt12l
         asigfiltr = asigfilt12r
      endif
    else
      asigfiltl = asigprefiltl
      asigfiltr = asigprefiltr
    endif

      if (krel == 1) then
        kenv = kcurramp * transeg:k(1, ienvr, ienvrsh, 0) ; r
      else
        kenv transeg 0, ienva, ienvash, 1, ienvd, ienvdsh, ienvs
        kcurramp = kenv
      endif
    asigprescalel = asigfiltl * kenv
    asigprescaler = asigfiltr * kenv

    asigscalel = asigprescalel * iscale
    asigscaler = asigprescaler * iscale

        apan PanLFO 0, kpan
      asigl = asigscalel * cos(apan)
      asigr = asigscaler * sin(apan)
    gasigl = gasigl + asigl
    gasigr = gasigr + asigr

  endin

  instr 96 ; delay
    ktoggle chnget "delaytog"
    kamp    chnget "delayamp"
    if ((ktoggle == 1) && (kamp > 0)) then
      kdecay      chnget "delaydec"
      ktempotog   chnget "delaytempotog"
      ktempo      chnget "delaytempo"
      kpan        chnget "delaypan"
      kpanlforate chnget "delaypanlfo"
      imaxspeed   =      10 ; max value of slider

      iTempoFracs[] fillarray 0.125, 0.16665, 0.25, 0.3333, 0.5, 1, 2, 3, 4, 6, 8, 9, 12, 16, 27, 32, 81

      if (ktempotog == 1) then
        kbpmchn chnget "HOST_BPM"
        kspeed = 60 / (iTempoFracs[ktempo] * kbpmchn)
      else
        kspeed chnget "delayspeed"
      endif

      asigl = kamp * vcomb:a(gasigl, kdecay, kspeed, imaxspeed)
      asigr = kamp * vcomb:a(gasigr, kdecay, kspeed, imaxspeed)

      asigll, asiglr, asigrl, asigrr PanLFO4 asigl, asigr, kpanlforate, kpan

      gasigl = gasigl + (asigll + asigrl)
      gasigr = gasigr + (asiglr + asigrr)
    endif
  endin

  opcode Schroeder, a, akkikikikikikiik
    ain, kgain, kdelt, imaxdelt, kalrvt1, iallpt1, kalrvt2, iallpt2, kalrvt3, iallpt3, kalrvt4, iallpt4, kalrvt5, iallpt5, iiws, kdistance xin

    imaxdist = 8

    aallp5 init 0

    kgainfblimit = kgain / 3.3

    adelin = ain + (aallp5 * kgainfblimit)

    adel vdelayx adelin, a(kdelt), imaxdelt, iiws

    aallp1 valpass adel, kalrvt1, iallpt1*(kdistance), imaxdist
    aallp1 valpass aallp1, kalrvt2, iallpt2*(kdistance), imaxdist
    aallp1 valpass aallp1, kalrvt3, iallpt3*(kdistance), imaxdist
    aallp1 valpass aallp1, kalrvt4, iallpt4*(kdistance), imaxdist
    aallp1 valpass aallp1, kalrvt5, iallpt5*(kdistance), imaxdist

      asig = (aallp1 * (1 - kgain*kgain)) + (ain * (-kgain))
    xout asig
  endop

instr 97 ; peaking eq
  ktoggle chnget "peaktog"
  kv      chnget "peakv"
  kv2     chnget "peakv2"
  if ((ktoggle == 1) && ((kv != 1) || (kv2 != 1))) then
    kcenter  chnget "peakcenter"
    kq       chnget "peakq"
    kcenter2 chnget "peakcenter2"
    kq2      chnget "peakq2"
    iqcenter =      sqrt(0.5)

    denorm gasigl
    denorm gasigr

    asigfiltl pareq gasigl, kcenter, kv, kq * iqcenter
    asigfiltr pareq gasigr, kcenter, kv, kq * iqcenter

    asigfiltl2 pareq asigfiltl, kcenter2, kv2, kq2 * iqcenter
    asigfiltr2 pareq asigfiltr, kcenter2, kv2, kq2 * iqcenter

    gasigl = asigfiltl2
    gasigr = asigfiltr2
  endif
endin

instr 98 ; reverb
  krevtog   chnget "revtog"
  kwetamt   chnget "revwet"

  if ((krevtog == 1) && (kwetamt > 0)) then
    kdryamt  =  1 - kwetamt
    krolloff    chnget "revfiltcut"
    kfeedback   chnget "revtight"
    kgain       chnget "revgain"
    ksize       chnget "revsize"
    kwarble =   chnget:k("revwarble")/100000 ; 0.001 – 0.00001
    kpan        chnget "revpan"
    kpanlforate chnget "panlforate"
    kreviws     chnget "reviws"
    ireviws     chnget "reviws"
    kdistance   chnget "revdist"

    kiwschanged changed kreviws
    if (kiwschanged == 1) then
      reinit iwschange
    endif

    iwschange:
      ireviws = i(kreviws)

      imaxdelt = 0.001
      imindelt = 0.00001
      kwarblel = kwarble
      kwarbler = kwarble

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
      kdeltl     = poscil:a(kdeltrandl, 2) + (kdeltrandl / 2)
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
    adell Schroeder afiltsigl, kfeedback, kdeltl, imaxdelt, kalrvt1l, iallpt1l, kalrvt2l, iallpt2l, kalrvt3l, iallpt3l, kalrvt4l, iallpt4l, kalrvt5l, iallpt5l, ireviws, kdistance

        kdeltrandr = randh:k(kwarbler/2, 1.8, 2, 1) + kwarbler/2
      kdeltr     = poscil:a(kdeltrandr, 2) + (kdeltrandr / 2)
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
    adelr Schroeder afiltsigr, kfeedback, kdeltr, imaxdelt, kalrvt1r, iallpt1r, kalrvt2r, iallpt2r, kalrvt3r, iallpt3r, kalrvt4r, iallpt4r, kalrvt5r, iallpt5r, ireviws, kdistance

        adelll, adellr, adelrl, adelrr PanLFO4 adell, adelr, kpanlforate, kpan
      asigl = ((adelll + adelrl) * kwetamt * kgain) + (gasigl * kdryamt)
      asigr = ((adellr + adelrr) * kwetamt * kgain) + (gasigr * kdryamt)
    gasigl = asigl
    gasigr = asigr
    rireturn
  endif
endin

instr 99 ; cabinet
  
  kcabtog chnget "cabtog"
  kwoodwd chnget "wood"

  if ((kcabtog == 1) && (kwoodwd > 0)) then
    asynthl = gasigl
    asynthr = gasigr

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
  else
    asigl = gasigl
    asigr = gasigr
  endif

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
 ==============================================
<CsScore>
f 0 z
i 96 0 z
i 97 0 z
i 98 0 z
i 99 0 z
</CsScore>
</CsoundSynthesizer>
