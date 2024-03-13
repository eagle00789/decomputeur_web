#!/bin/bash

# Combine header and footer with HTML files
for file in *.html; do
    # Skip header and footer files
    if [[ "$file" != "head.html" && "$file" != "foot.html" ]]; then
        # Output the filename being processed
        echo "Combining header and footer with $file..."

        # Combine header and footer with HTML file
        cat head.html > tmp.html
        cat "$file" >> tmp.html
        cat foot.html >> tmp.html
        mv tmp.html "$file"

        echo "Successfully combined header and footer with $file."
    fi
done
