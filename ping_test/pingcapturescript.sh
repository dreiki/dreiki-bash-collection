#!/bin/bash
# SCRIPT TO PING, THE DATA IS FROM CSV CALLED 'main_file'

pingcapture () {
    workingdir="${1:-$(pwd)}" # if parameter empty call pwd
    echo "$workingdir"

    while IFS="," read -r -a line
    do
        cd "$workingdir"
        max=$((${#line[@]}-1))
        for i in $(seq 0 $max)
        do
            if (($i == 0)) # check field
            then # echo the header
                echo "${line[i]}" | tee -a output.txt
            else # ping the ip
                ping -c 5 "${line[i]}" -O | tee -a output.txt
                wait
            fi
        done
        echo
    done < "main_file" # The csv formated file to be read by the function
}
pingcapture "$1"