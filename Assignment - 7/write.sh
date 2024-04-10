if [ -z "$1" ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

write "$1" || echo "User has messages disabled. Consider using an alternative communication method."

