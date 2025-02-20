#!/bin/bash
names=("Ali" "Melvi" "Govind")
echo "Number of Names: ${#names[@]}"
echo "Name at index 2 :${names[2]}"
echo "List of Names :"
for name in "${names[@]}"; do
echo $name
done
