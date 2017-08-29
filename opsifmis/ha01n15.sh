ha01n15(){
vgdisplay |awk -F'/' '/VG Name/ {print $NF}'
}
ha01n15
