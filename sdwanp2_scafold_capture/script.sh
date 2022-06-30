#!/bin/bash
makefolder () {
    input="$1"
    while IFS= read -r line
    do
        echo "$line"
        echo
        # ls "/home/denny/windoc/!PSI!/2022/Pegadaian/SDWAN P2/migrasi/CP Jambi/$line"
    done < "$input"
    ls
    pwd
}

makefolder "$1"


# mkdir '1 Capture Before Only LTE'
# mkdir '2 Capture After with WAN migrated'
# mkdir '3 Capture Test LTE off WAN on'
# mkdir '4 Capture Test LTE on WAN off'
# mkdir '5 Capture Final LTE on WAN on'

# cd '1 Capture Before Only LTE'
# touch 'show ip interface brief.png'
# touch 'show ip route vrf 10 summary.png'
# touch 'show ip route.png'
# touch 'show sdwan bfd sessions.png'
# touch 'show sdwan control connections.png'
# touch 'show sdwan omp peers.png'
# cd '../2 Capture After with WAN migrated'
# touch 'show ip interface brief.png'
# touch 'show ip route vrf 10 summary.png'
# touch 'show ip route.png'
# touch 'show sdwan bfd sessions.png'
# touch 'show sdwan control connections.png'
# touch 'show sdwan omp peers.png'
# cd '../3 Capture Test LTE off WAN on'
# touch 'show ip interface brief.png'
# touch 'show ip route vrf 10 summary.png'
# touch 'show ip route.png'
# touch 'show sdwan bfd sessions.png'
# touch 'show sdwan control connections.png'
# touch 'show sdwan omp peers.png'
# cd '../4 Capture Test LTE on WAN off'
# touch 'show ip interface brief.png'
# touch 'show ip route vrf 10 summary.png'
# touch 'show ip route.png'
# touch 'show sdwan bfd sessions.png'
# touch 'show sdwan control connections.png'
# touch 'show sdwan omp peers.png'
# cd '../5 Capture Final LTE on WAN on'
# touch 'show ip interface brief.png'
# touch 'show ip route vrf 10 summary.png'
# touch 'show ip route.png'
# touch 'show sdwan bfd sessions.png'
# touch 'show sdwan control connections.png'
# touch 'show sdwan omp peers.png'
# touch 'show cdp neigbors.png'