#!/bin/bash

scafoldcapture () {
    workingdir=$(pwd)
    while IFS="," read -r -a line
    do
        cd "$workingdir"
        max=$((${#line[@]}-1))
        for i in $(seq 0 $max)
        do
            if (($i == 0))
            then
                mkdir "${line[i]}"
                cd "${line[i]}"
                echo "${line[i]}"
            else
                touch "${line[i]}"
                echo "${line[i]}"
            fi
        done
        echo
    done < "main_file"
}

scafoldcapture