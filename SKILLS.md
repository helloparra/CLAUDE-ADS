# Skills instaladas

11 plugins desde 5 marketplaces. Definición en `.claude/settings.json`.

## 1. marketing-skills (coreyhaines31/marketingskills) — 50 skills · v2.11.1

Ejecución de canal. El paquete más directamente aplicable a ecommerce.

`cro` · `ads` · `ad-creative` · `copywriting` · `copy-editing` · `emails` · `sms`
`social` · `seo-audit` · `ai-seo` · `programmatic-seo` · `schema` · `site-architecture`
`analytics` · `attribution` · `ab-testing` · `pricing` · `offers` · `paywalls` · `popups`
`signup` · `onboarding` · `churn-prevention` · `referrals` · `launch` · `marketing-plan`
`marketing-loops` · `marketing-psychology` · `customer-research` · `competitors`
`competitor-profiling` · `product-marketing` · `content-strategy` · `lead-magnets`
`cold-email` · `prospecting` · `sales-enablement` · `revops` · `public-relations`
`influencer-marketing` · `community-marketing` · `co-marketing` · `events`
`directory-submissions` · `free-tools` · `image` · `video` · `aso` · `marketing-ideas`
`marketing-council`

## 2. claude-ads (AgriciDaniel/claude-ads) — 34 skills · v2.0.1

Operación de medios de pago en 12 plataformas, con informes JSON versionados y
puntuación determinista.

Plataformas: `ads-google` `ads-meta` `ads-youtube` `ads-tiktok` `ads-linkedin`
`ads-microsoft` `ads-amazon` `ads-apple` `ads-reddit` `ads-pinterest` `ads-snapchat` `ads-x`

Ciclo de vida: `ads-setup` `ads-research` `ads-plan` `ads-create` `ads-generate`
`ads-creative` `ads-photoshoot` `ads-landing` `ads-launch` `ads-monitor` `ads-optimize`
`ads-test` `ads-budget` `ads-report` `ads-audit` `ads-validate` `ads-math`
`ads-attribution` `ads-server-side-tracking` `ads-competitor` `ads-dna`

## 3. ai-copywriter (mikiarlo3/ai-copywriter) — 1 skill · v1.6.0

Copy orientado al lector + "humanizador" contra los 33 patrones de escritura de IA
del artículo *Signs of AI writing* de Wikipedia. Pasada final sobre cualquier texto
publicable: fichas de producto, asuntos de email, anuncios, posts.

## 4. wondelai/skills — 7 de 10 paquetes · v1.8.0

Marcos estratégicos de libros de referencia.

- **marketing-cro** — CRO methodology, StoryBrand, Scorecard Marketing, One-Page Marketing, conversion-optimization
- **strategy-growth** — Good Strategy/Bad Strategy, Blue Ocean, Crossing the Chasm, Traction EOS, Cold Start Problem, Contagious
- **product-strategy** — Jobs to Be Done, Monetizing Innovation (precio por disposición a pagar), Lean Analytics, Negotiation
- **sales-influence** — Cialdini, Predictable Revenue, Made to Stick, Obviously Awesome
- **ux-design** — Refactoring UI, iOS HIG, heurísticas de usabilidad, Hooked, microinteracciones, tipografía web
- **product-innovation** — Lean Startup, Design Sprint, Inspired, Continuous Discovery, The Mom Test
- **metaskills** — 14 recorridos guiados: `create-business` `grow-business` `improve-business` `create-website` `grow-website` `improve-website` `create-app` `grow-app` `improve-app` `improve-retention` …

No instalados por no aplicar al caso: `code-craftsmanship`, `systems-architecture`,
`team-motivation`.

## 5. alive (alivecontext/alive) — 36 skills · v3.2.1

Memoria y contexto persistente en ficheros locales: `alive-capture` `alive-save`
`alive-load` `alive-search` `alive-daily` `alive-world` …

**Aviso:** es el único plugin con *hooks*. Declara 14 invocaciones en 5 eventos
(`SessionStart`, `PreToolUse`, `PostToolUse`, `UserPromptSubmit`, `PreCompact`) que
ejecutan scripts locales en cada sesión. Todo es local y está documentado en
`PERMISSIONS.md` del repositorio de origen. Si no interesa esa superficie:

    claude plugin disable alive@alivecontext

## Solapamientos

| Tema | Usar | En vez de |
|---|---|---|
| CRO de una página concreta | `cro` (marketing-skills) | `cro-methodology` (wondelai) |
| Auditoría de una cuenta de anuncios | `ads-<plataforma>` (claude-ads) | `ads` (marketing-skills) |
| Ideas de campaña de un canal | `ads` (marketing-skills) | `ads-plan` (claude-ads) |
| Redacción final publicable | `ai-copywriter` | `copywriting` (marketing-skills) |
| Precio y empaquetado | `pricing` + `monetizing-innovation` | — |

## Mantenimiento

    claude plugin marketplace update --all
    claude plugin list
