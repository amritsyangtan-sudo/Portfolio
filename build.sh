#!/bin/sh
set -e

# Install .NET
curl -fsSL https://dot.net/v1/dotnet-install.sh | bash /dev/stdin --channel 10.0 --install-dir "$HOME/.dotnet"

export PATH="$HOME/.dotnet:$PATH"

dotnet --info

dotnet publish Portfolio.Client/Portfolio.Client.csproj \
    -c Release \
    -o output