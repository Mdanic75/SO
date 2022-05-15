#!/bin/bash
declare -A columns
declare -A values
columns=( ["ID"]="integer" ["nume"]="string" ["notaSO"]="integer" ["email"]="string" )
read_csv(){
local file_name="$1"
echo "${!columns[@]}"
}
read_csv "Student.csv"