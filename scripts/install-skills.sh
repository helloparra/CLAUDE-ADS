#!/usr/bin/env bash
# Instala las mismas skills en otra máquina (Claude Code local).
# En este repositorio no hace falta: .claude/settings.json ya las declara.
set -euo pipefail

marketplaces=(
  coreyhaines31/marketingskills
  AgriciDaniel/claude-ads
  mikiarlo3/ai-copywriter
  wondelai/skills
  alivecontext/alive
)

plugins=(
  marketing-skills@marketingskills
  claude-ads@ai-marketing-hub-claude-ads
  ai-copywriter@ai-copywriter
  marketing-cro@wondelai-skills
  strategy-growth@wondelai-skills
  product-strategy@wondelai-skills
  sales-influence@wondelai-skills
  ux-design@wondelai-skills
  product-innovation@wondelai-skills
  metaskills@wondelai-skills
  alive@alivecontext
)

for m in "${marketplaces[@]}"; do
  echo "==> marketplace: $m"
  claude plugin marketplace add "$m"
done

for p in "${plugins[@]}"; do
  echo "==> plugin: $p"
  claude plugin install "$p"
done

claude plugin list
