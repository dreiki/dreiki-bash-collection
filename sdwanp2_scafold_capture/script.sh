#!/bin/bash
# SCRIPT TO SCAFOLD CAPTURE FOLDER SDWAN OR ANY 2 TIER "SUB_FOLDER/FILE_CAPTURE" FILE STRUCTURE
# USE SINGLE QUOTE FOR PATH PARAMETER CONTAINING WHITESPACE

scafoldcapture () {
    workingdir="${1:-$(pwd)}" # if parameter empty call pwd
    echo "$workingdir"

    while IFS="," read -r -a line
    do
        cd "$workingdir"
        max=$((${#line[@]}-1))
        for i in $(seq 0 $max)
        do
            if (($i == 0)) # check field
            then # make parent directory
                mkdir "${line[i]}"
                cd "${line[i]}"
                echo "${line[i]}"
            else # touch the file required
                touch "${line[i]}"
                echo "${line[i]}"
            fi
        done
        echo
    done < "main_file" # The csv formated file to be read by the function
}
scafoldcapture "$1"