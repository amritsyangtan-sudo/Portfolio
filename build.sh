#!/bin/sh
set -e

curl -sSL https://dot.net/v1/dotnet-install.sh | bash /dev/stdin -c 10.0 --install-dir ./dotnet

export PATH="$PWD/dotnet:$PATH"

dotnet publish Portfolio/Portfolio.csproj -c Release -o output