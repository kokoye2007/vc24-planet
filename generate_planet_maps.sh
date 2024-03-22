#!/bin/bash

# Arrays for the planet names, proper names, and their corresponding colors
planets=("mercury" "venus" "earth" "mars" "jupiter" "saturn" "uranus" "neptune")
cnames=("Mercury" "Venus" "Earth" "Mars" "Jupiter" "Saturn" "Uranus" "Neptune")
colors=("#a8a8a8" "#f5c76b" "#2b7bbf" "#c1440e" "#d8ca9d" "#f5e06d" "#b0ddff" "#4666b0")

# Loop through each planet
for i in "${!planets[@]}"; do
    # Use sed to replace placeholders with actual values for each planet and save to a new file
    sed -e "s/#NAME/${planets[$i]}/g" \
        -e "s/#CNAME/${cnames[$i]}/g" \
        -e "s/#COLOR/${colors[$i]}/g" tmj.org > "map-2024-${planets[$i]}.tmj"
done

echo "All planet files have been generated."

