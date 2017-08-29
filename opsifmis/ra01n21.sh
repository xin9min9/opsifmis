ra01n21(){
dmidecode -t 1 |grep 'Serial Number' | awk -F: '{print $2}'
}
ra01n21
