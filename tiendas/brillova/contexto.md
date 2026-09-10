# Brillova — contexto de tienda

> Fuente de los datos marcados **[Shopify]**: consulta directa vía MCP el 2026-09-10.
> Los marcados **[PENDIENTE]** no se pueden verificar desde la tienda y los tiene que
> aportar Pablo. Ningún número de este documento es una estimación inventada.

## Identidad

| Campo | Valor |
|---|---|
| Marca | Brillova (`vendor` de ambos productos) |
| Nombre de la tienda en Shopify | **"Mi tienda"** — sin configurar [Shopify] |
| Dominio | `d1w4ar-ee.myshopify.com` — sin dominio propio [Shopify] |
| Plan | Basic [Shopify] |
| Mercado | España (único mercado activo), EUR, `Europe/Madrid` [Shopify] |
| Impuestos | Precios con IVA incluido [Shopify] |

## Producto

Categoría: cuidado del automóvil. Estrategia de un producto principal + un upsell
de mismo envío.

| SKU | Producto | PVP (IVA inc.) | Stock | Estado |
|---|---|---|---|---|
| `KITRESTFARO-24915` | Kit Restaurador de Faros | 34,99 € | 50 | **BORRADOR** [Shopify] |
| `PACK-COMPLEMENTO-2` | Complemento: Plásticos + Sellado Cerámico | 14,99 € | 50 | **BORRADOR** [Shopify] |

**Ninguno de los dos está publicado.** La tienda no puede vender hoy.

AOV máximo teórico si todo el mundo comprara el upsell: 49,98 €. AOV real
desconocido hasta tener pedidos.

### Propuesta de valor

Faros amarilleados → transparencia recuperada, sin desmontar, sin lijar, sin taller.
Dos ganchos reales: **la ITV** (los faros opacos son motivo de defecto) y el **coste
de la alternativa** (sustituir faros en taller cuesta cientos de euros).

La ficha actual ya hace algo poco común y muy bien: **acota lo que el producto NO
hace** (no repara faros agrietados, rotos ni rayados en profundidad; en faros muy
degradados el resultado es mejora, no faro nuevo). Esto reduce devoluciones y
disputas, y ayuda con la política de anuncios de Meta.

### Cliente ideal

[PENDIENTE] Hipótesis a validar, no dato: conductor de coche de 8–15 años que
enfrenta la ITV o quiere vender el coche. Sin investigación ni pedidos que lo
respalden todavía.

## Economía unitaria

**[PENDIENTE — bloqueante.]** Sin estos números no se puede calcular el CPA máximo
y cualquier decisión de puja sería a ciegas.

| Concepto | Kit 34,99 € | Complemento 14,99 € |
|---|---|---|
| PVP con IVA | 34,99 € | 14,99 € |
| IVA 21% a liquidar | −6,07 € | −2,60 € |
| **Ingreso neto** | **28,92 €** | **12,39 €** |
| Coste de producto (COGS) | [PENDIENTE] | [PENDIENTE] |
| Envío y packaging | [PENDIENTE] | 0 € (mismo envío) |
| Comisión pasarela | [PENDIENTE] | [PENDIENTE] |
| **Margen de contribución** | **[PENDIENTE]** | **[PENDIENTE]** |

El IVA sale del 21% general español sobre precio con impuestos incluidos
(34,99 / 1,21 = 28,92). Es aritmética, no una estimación de negocio.

Del margen de contribución sale el **CPA máximo**, y de ahí el ROAS objetivo. Es el
primer dato que hay que cerrar.

## Estado operativo

| Métrica | Valor |
|---|---|
| Pedidos | **0** [Shopify] |
| Clientes | **0** [Shopify] |
| Sesiones, tasa de conversión, AOV, CAC, recompra | Sin datos: no hay tráfico ni ventas |

## Bloqueantes detectados

Ordenados por lo que impide vender antes.

1. **Productos en borrador.** No hay nada publicado.
2. **Políticas legales incompletas.** Solo existe la de privacidad [Shopify].
   Faltan devoluciones/desistimiento, términos del servicio y política de envíos.
   En España son obligatorias (RDL 1/2007) y además Meta y Google exigen políticas
   de devolución y contacto visibles para aprobar la cuenta publicitaria. Es causa
   habitual de rechazo antes incluso de la primera campaña.
3. **Tienda sin nombre y sin dominio propio.** Se llama "Mi tienda" y vende desde
   `d1w4ar-ee.myshopify.com`. Un checkout en `myshopify.com` con marca genérica
   hunde la confianza justo en el paso del pago, y con tráfico frío se nota.
4. **Sin medición.** No consta Pixel de Meta, Conversions API ni GA4. Hay que
   montarlo *antes* de la primera campaña: sin conversiones que aprender, el
   algoritmo optimiza a ciegas y el gasto de las primeras semanas se pierde.
5. **Sin captación de email/SMS.** Con ticket de 35 € y recompra baja por naturaleza
   del producto, el margen se recupera en el upsell y en la segunda venta.

## Canales

[PENDIENTE] Ninguno activo. Por definir cuáles y con qué presupuesto de arranque.

## Competencia

[PENDIENTE] Sin identificar. Categoría con mucha oferta en Amazon y marcas
establecidas de cuidado del automóvil.

## Objetivos

[PENDIENTE] Sin definir para el trimestre.

## Próximos pasos acordados

_Se rellenará al cerrar los datos pendientes._
