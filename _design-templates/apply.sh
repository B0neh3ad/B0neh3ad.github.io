#!/usr/bin/env bash
# Switch the blog to one of the saved designs.
#   _design-templates/apply.sh walk       # ⑨ 산책
#   _design-templates/apply.sh daylight   # ⑮ 하루의 빛
#   _design-templates/apply.sh calm       # ⑲ 고요 (current default)
# Copies the design's CSS and photos into assets/ and sets `design:` in _config.yml.
set -euo pipefail
cd "$(dirname "$0")/.."

name="${1:-}"
case "$name" in
  walk|daylight|calm) ;;
  *) echo "usage: $0 <walk|daylight|calm>" >&2; exit 1 ;;
esac

if [ "$name" != "calm" ]; then
  cp "_design-templates/$name/$name.css" assets/css/redesign/
  mkdir -p assets/images/redesign
  cp "_design-templates/$name/images/"*.jpg assets/images/redesign/
fi

# works with both BSD (macOS) and GNU sed
sed -i.bak -E "s/^(design[[:space:]]*:[[:space:]]*)[a-z]+/\1$name/" _config.yml
rm -f _config.yml.bak

echo "design: $name 로 바꿨어요. 'bundle exec jekyll serve'로 확인하세요."
