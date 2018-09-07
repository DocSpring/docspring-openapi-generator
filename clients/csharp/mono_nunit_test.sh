#!/usr/bin/env bash
#
# Generated by: https://github.com/openapitools/openapi-generator.git
#

wget -nc https://dist.nuget.org/win-x86-commandline/latest/nuget.exe
# Don't run these every time. Uncomment on first run
# mozroots --import --sync

echo "[INFO] remove bin/Debug/FormApi.Client.Test.dll"
rm src/FormApi.Client.Test/bin/Debug/FormApi.Client.Test.dll 2> /dev/null

echo "[INFO] install NUnit runners via NuGet"
wget -nc https://dist.nuget.org/win-x86-commandline/latest/nuget.exe
# mozroots --import --sync
mono nuget.exe install src/FormApi.Client.Test/packages.config -o packages

echo "[INFO] Install NUnit runners via NuGet"
mono nuget.exe install NUnit.Runners -Version 2.6.4 -OutputDirectory packages

echo "[INFO] Build the solution and run the unit test"
msbuild FormApi.Client.sln && \
    mono ./packages/NUnit.Runners.2.6.4/tools/nunit-console.exe src/FormApi.Client.Test/bin/Debug/FormApi.Client.Test.dll
