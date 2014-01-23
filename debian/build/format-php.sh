#! /bin/bash

thisdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
fixers="-psr0"
cmd="/usr/bin/php ${thisdir}/php-cs-fixer.phar fix --fixers=${fixers}"

`$cmd nagiosvshell/www/application/controllers/`
`$cmd nagiosvshell/www/application/helpers/`
`$cmd nagiosvshell/www/application/models/`
`$cmd nagiosvshell/www/application/views/`
