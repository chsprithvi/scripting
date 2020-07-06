################## 50 individual 12 months

+#!/bin/bash 
#initializing empty array
declare -A birthDate 
#using cer to store value based on index
janc=0
febc=0
marc=0
aprc=0
mayc=0
junc=0
julc=0
augc=0
sepc=0
octc=0
novc=0
decc=0

for ((i=0; i<50; i++))
do
    randomMonth=$((RANDOM%12+1))
    case $randomMonth in
    1)
        #at first jan c is 0 so it will store in 0th index
        #storing value in another array
        #if u like to see what is inside this array in each itration plz print and check it out
        janArray[$janc]="person$i"
        #incrementing cer
        janc=$(($janc+1))
        #creating key as jan and storing the values in birthDate array
        birthDate["jan"]=${janArray[@]};;
    2)
        febArray[$febc]="person$i"
        febc=$(($febc+1)) 
        birthDate["feb"]=${febArray[@]};;
    3)
        marArray[$marc]="person$i"
        marc=$(($marc+1)) 
        birthDate["mar"]=${marArray[@]};;   
    4)
        aprArray[$aprc]="person$i"
        aprc=$(($aprc+1)) 
        birthDate["apr"]=${aprArray[@]};;   
    5)
        mayArray[$mayc]="person$i"
        mayc=$(($mayc+1)) 
        birthDate["may"]=${mayArray[@]};;   
    6)
        junArray[$junc]="person$i"
        junc=$(($junc+1)) 
        birthDate["jun"]=${junArray[@]};;   
    7)
        julArray[$julc]="person$i"
        julc=$(($julc+1)) 
        birthDate["jul"]=${julArray[@]};;   
    8)
        augArray[$augc]="person$i"
        augc=$(($augc+1)) 
        birthDate["aug"]=${augArray[@]};;   
    9)
        sepArray[$sepc]="person$i"
        sepc=$(($sepc+1)) 
        birthDate["sep"]=${sepArray[@]};;   
    10)
        octArray[$octc]="person$i"
        octc=$(($octc+1)) 
        birthDate["oct"]=${octArray[@]};;   
    11)
        novArray[$novc]="person$i"
        novc=$(($novc+1)) 
        birthDate["nov"]=${novArray[@]};;   
    12)
        decArray[$decc]="person$i"
        decc=$(($decc+1)) 
        birthDate["dec"]=${decArray[@]};;   


    esac    
done

echo "below are the results"

months=("jan" "feb" "mar" "apr" "may" "jun" "jul" "aug" "sep" "oct" "nov" "dec")
for month in ${months[@]}
do  
    #displaing all the data
    echo "$month : ${birthDate[$month]}"
done
