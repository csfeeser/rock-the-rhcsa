#!/bin/bash

# Paths to files
input_file="/home/student/animals.txt"
output_file="/home/student/aquarium.txt"
reference_url="https://gist.githubusercontent.com/atduskgreg/3cf8ef48cb0d29cf151bedad81553a54/raw/82f142562cf50b0f6fb8010f890b2f934093553e/animals.txt"

# Step 1: Extract lines with "fish" (case-insensitive) and remove leading/trailing blank lines
grep -i 'fish' "$input_file" | sed '/^$/d' > "$output_file"

# Step 2: Download the reference file to compare against (filtered content only)
wget -qO- "$reference_url" | grep -i 'fish' | sed '/^$/d' > /tmp/reference_aquarium.txt

# Step 3: Compare the contents of output_file with reference_aquarium.txt
if cmp -s "$output_file" /tmp/reference_aquarium.txt; then
    # Print green "SUCCESS!" if contents match
    echo -e "\e[32mSUCCESS!\e[0m"
else
    # Print red "NO PASS- TRY AGAIN!" if contents differ
    echo -e "\e[31mNO PASS- TRY AGAIN!\e[0m"
fi

# Cleanup temporary file
rm /tmp/reference_aquarium.txt
