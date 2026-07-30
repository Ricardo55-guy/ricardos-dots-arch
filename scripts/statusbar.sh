#!/bin/sh
while true; do
    DATE=$(date "+%a %b %d")
    TIME=$(date "+%I:%M %p")
    BATT=$(acpi -b)

    echo "-/ $DATE / $TIME /- ${BATT}% Charged    "
    sleep 30
done
