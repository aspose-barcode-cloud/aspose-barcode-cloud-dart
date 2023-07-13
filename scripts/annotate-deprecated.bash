#!/bin/bash
set -euo pipefail

find lib -name "*.dart" -exec sed -i -E 's_^(\/\* DEPRECATED: )([^*]+)(.+)_\1\2\3\n@Deprecated("\2")_' "{}" \;
