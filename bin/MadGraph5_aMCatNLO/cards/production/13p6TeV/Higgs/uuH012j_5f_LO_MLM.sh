#!/bin/bash

masses=(120 125 130)

sample=uuH012j_5f_LO_MLM_

postfix=(_run_card.dat _customizecards.dat _proc_card.dat _extramodels.dat )

echo ${masses[*]}

for mass in ${masses[*]}; do
    echo generating cards for M = $mass GeV
    
    mkdir ${sample}${mass}
           
    for i in {0..3}; do
	sed "s/<MASS>/${mass}/g" ${sample}/${sample}${postfix[$i]} > ${sample}$mass/${sample}$mass${postfix[$i]}
    done    
done