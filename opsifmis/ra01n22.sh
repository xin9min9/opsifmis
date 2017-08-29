ra01n22(){
which ifconfig >/dev/null 2>&1
[ $? -eq 0 ] && { ifconfig -a | grep --color -o '\([0-9]\{1,3\}\.\)\{3\}[0-9]\{1,3\}' | grep -v '127.0.0.1' | head -1; } || {
ip addr | grep --color -o '\([0-9]\{1,3\}\.\)\{3\}[0-9]\{1,3\}' | grep -v '127.0.0.1' | head -1; }
}
ra01n22
