#!/bin/sh
set -e

if [ -n "$BACKEND_TEST_CMD" ]; then
  echo "Running BACKEND_TEST_CMD: $BACKEND_TEST_CMD"
  sh -c "$BACKEND_TEST_CMD"
  exit $?
fi

if command -v dotnet >/dev/null 2>&1; then
  if find . -maxdepth 3 -name "*.sln" -o -name "*.csproj" | grep -q .; then
    dotnet test
    exit $?
  fi
fi

echo "❌ No backend test command configured."
echo "Set BACKEND_TEST_CMD or ensure dotnet + a .sln/.csproj exists."
exit 1
