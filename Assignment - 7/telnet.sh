if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: $0 <hostname> <port>"
    exit 1
fi

telnet "$1" "$2"

