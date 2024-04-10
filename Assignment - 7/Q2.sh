machines=("172.50.0.166" "172.50.7.225")

get_memory_usage() {
    ssh "$1" free -m | awk 'NR==2 {printf "Memory Usage: %s/%sMB (%.2f%%)\n", $3, $2, $3*100/$2}'
}

get_cpu_usage() {
    ssh "$1" top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print "CPU Usage: " 100 - $1"%"}'
}

for machine in "${machines[@]}"; do
    echo "Machine: $machine"
    get_memory_usage "$machine"
    get_cpu_usage "$machine"
    echo ""
done

