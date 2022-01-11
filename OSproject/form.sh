#!/bin/bash
# d=0
# e=0.5
id=$(yad --title="Quiz Test" --width=350 --text-align=center --separator="" --text="<span foreground='Dark Green'><b><big><big>Do you Want To Start The Quiz?</big></big></b></span>" \
--field="
":LBL \
--form \
--field="<span foreground='Dark Red'>Exam Code</span>":LBL --align=center \
--field="" \
--field="Write your Name":LBL \
--field="" \
--field="Click<span foreground='Dark Green'><big><b> OK </b></big></span> to Start                         <span foreground='Dark Green'><big><b> Cancel </b></big></span> to Close":LBL --align=center \
>>ab.txt)

x=${id}
echo "$x"