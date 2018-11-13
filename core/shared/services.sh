
# Primer argumento (host)
host=$1

# Shift, así queda como primer argumento
# La lista de puertos
shift

for p in $@; do
    echo "Setting up port" $p
    nc -l -p $p -s $host &
    echo "Port" $p "done set up"
done
