
alias conda_update='conda list|tail -n +3 | cut -d\  -f1|xargs conda update'
# From Data science at the command line book. page 93. prints all the variable names from a CSV
names () { sed -e 's/,/\n/g;q';}
