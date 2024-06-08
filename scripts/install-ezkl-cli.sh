#!/bin/bash

[ ! -z $1 ] && version=v$1
curl https://raw.githubusercontent.com/zkonduit/ezkl/main/install_ezkl_cli.sh | bash -s -- $version