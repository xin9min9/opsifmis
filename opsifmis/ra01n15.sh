ra01n15(){
vgdisplay -A |grep 'VG Name' | awk '{print $NF}' 2>/dev/null
}
ra01n15
