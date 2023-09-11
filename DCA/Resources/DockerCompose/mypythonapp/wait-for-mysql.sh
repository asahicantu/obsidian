#! /bin/bash

set -e
set -x

host="$1"
cmd="$@"

echo "Connecting to $host with user root"

until mysql -h "$host" -u "root" -padmin123 sys -e "select 1;"; do
  >&2 echo "MySQL is unavailable - sleeping"
  sleep 2
done

>&2 echo "MySQL is up - executing command..."
$2 $3 $4

>&2 echo "Keeping the puython container running..."
exec $5 $6