#!/usr/bin/env bash
# Gate for the scratch repo: format, vet, and test.
set -euo pipefail
cd "$(dirname "$0")/.."
unformatted=$(gofmt -l .)
if [[ -n "$unformatted" ]]; then
  echo "gofmt: needs formatting: $unformatted" >&2
  exit 1
fi
go vet ./...
go test ./...
echo "gate: ok"
