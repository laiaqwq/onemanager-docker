#!/usr/bin/env bash
set -Eeuo pipefail

file="/var/www/html/.data/config.php"

if [ ! -f "$file" ]; then
  echo "<?php \$configs = '
{
}
';" > "$file"
fi

chown www-data:www-data "$file"

exec "$@"
