aa01n13(){
kb_mem=$(bootinfo -r)
mb_mem=$( expr $kb_mem / 1024)
gb_mem=$( expr $mb_mem / 1024)
[ $gb_mem -ne 0 ] && { echo $gb_mem'G'; } || { echo $mb_mem'M'; } 
}
aa01n13
