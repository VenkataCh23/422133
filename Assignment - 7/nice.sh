if [ -z "$1" ]; then
    echo "Usage: $0 <command>"
    exit 1
fi

nice -n 10 "$@"

