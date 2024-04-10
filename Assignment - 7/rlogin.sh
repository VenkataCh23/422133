if [ -z "$1" ]; then
    echo "Usage: $0 <hostname>"
    exit 1
fi

rlogin "$1"

