#!/bin/bash
SPL_DIR="/home/expos/myexpos/spl"
EXPL_DIR="/home/expos/myexpos/expl"
PDIR="$PWD"

echo "------SPL Compiling-----"
# Compiling SPL code
for file in "$PDIR"/*.spl; do
  [ -e "$file" ] || continue  # Skip if no files match
  cd "$SPL_DIR" || { echo "Failed to change directory to $SPL_DIR"; exit 1; } 
  echo "Running: $file"
  ./spl $file || { echo "Failed to compile $file"; exit 1; }
done

echo "-----EXPL Compiling-----"
# Compiling EXPL code
for file in "$PDIR"/*.expl; do
  [ -e "$file" ] || continue  # Skip if no files match
  cd "$EXPL_DIR" || { echo "Failed to change directory to $EXPL_DIR"; exit 1; }
  echo "Running: $file"
  ./expl $file || { echo "Failed to compile $file"; exit 1; }
done
