
a=`emacsclient --eval "(if (org-clocking-p)(org-clock-get-clock-string))" | head -n 1`
echo "${a:4:-6}"
