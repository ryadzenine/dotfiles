
alias conda_update='conda list|tail -n +3 | cut -d\  -f1|xargs conda update'
