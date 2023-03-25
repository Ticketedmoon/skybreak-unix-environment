awk -F, = -F is a specifier for the file separator, in this case ','
**Note:** You may need to specify the escape character in ceratin scenarios.
          e.g., `awk -F\|` to specify that the separator is the '|'.

## Search for a line in a file with a separator:
**Note:** In this document '?' indicates a given parameter is optional.  

 
**Format:** awk -F{delimiter} [{condition} {action}?] {file}
> awk -F\. '$2 == "github.com"' file.csv
 
## Search for a piece of information on a line in a file.
> awk -F, '$2 == "github.com" { print $4 }' 1640172054593-keeper.csv
