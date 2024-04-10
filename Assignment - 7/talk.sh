if [ -z "$1" ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

talk "$1"

