#!/usr/local/bin/gawk -f

# Replaces the header in ruby source.

# Load the inplace lib for gawk.
@load "inplace";

function filterHeader() {
    endingLine = 0;
    # Check for the start of a comment block.
    if ($0 == "=begin") {
        # Only look at the first 15 lines of the file.
        for (i = 1; i < 15; i++) {
            # Break when encountering the end of a comment block.
            if ($0 == "=end") {
                endingLine = i;
                break;
            }
            getline;
        }
    }
    if (endingLine > 0) {
        endingLine + 1;
    }
    return endingLine;
}

BEGIN { } {
    lineNumber = filterHeader();
    # Output the filtered file contents
    if (NR > lineNumber && $0 != "=end") {
        print $0;
    }
} END { }
