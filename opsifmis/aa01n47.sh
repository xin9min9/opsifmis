aa01n47(){
lsuser -c -a id home ALL | sed '/^#.*/d' | tr ':' '\011'
}
aa01n47
