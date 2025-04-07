#!/bin/bash

OUTPUT_FILE="output.txt"
ERROR_FILE="error.txt"

redirect_output() {
echo "Demonstrating standard output and error redirection."

> "$OUTPUT_FILE"
> "$ERROR_FILE"

echo "This is a standard output message." > "$OUTPUT_FILE"
echo "This is a standard error message." 1>&2 > "$ERROR_FILE"

echo "Trying to list a non-existent directory:" >> "$OUTPUT_FILE"
ls /non_existent_directory >> "$OUTPUT_FILE" 2>> "$ERROR_FILE"
}

display_results() {
echo ""
echo "Contents of $OUTPUT_FILE:"
cat "$OUTPUT_FILE"
echo ""
echo "Contents of $ERROR_FILE:"
cat "$ERROR_FILE"
echo ""
}

redirect_output
display_results
