#!/bin/bash

scafoldcapture () {
    workingdir="${1:-$(pwd)}"
    echo "$workingdir"
    # ls "$workingdir"
    # workingdir=$(pwd)
    # echo $workingdir
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
    done < "main_file"
}
scafoldcapture "$1"
# scafoldcapture