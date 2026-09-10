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
| Mercado | España peninsular, EUR, `Europe/Madrid` [Shopify] |
| Impuestos | Precios con IVA incluido [Shopify] |

## Producto

Categoría: cuidado del automóvil. Estrategia de un producto principal + un upsell
de mismo envío.

| SKU | Producto | PVP (IVA inc.) | Stock | Estado |
|---|---|---|---|---|
| `KITRESTFARO-24915` | Kit Restaurador de Faros | 34,99 € | 50 | **BORRADOR** [Shopify] |
| `PACK-COMPLEMENTO-2` | Complemento: Plásticos + Sellado Cerámico | 14,99 € | 50 | **BORRADOR** [Shopify] |

**Ninguno de los dos está publicado.** La tienda no puede vender hoy.

AOV máximo teórico si todo el mundo comprara el upsell: 49,98 € de subtotal
(56,97 € con envío). AOV real desconocido hasta tener pedidos.

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

Costes aportados por Pablo (2026-09-10). Fulfillment: **Dropipro** (agencia).
Pasarela: **Shopify Payments**.

**Supuestos declarados** (verificar, no son datos):
- Comisión Shopify Payments España plan Basic: **1,9% + 0,25 €** por transacción
  sobre el importe bruto. A confirmar en Configuración → Pagos. Una comisión del
  2,9% restaría unos 0,42 € al margen: no cambia ninguna conclusión.
- Negocio sujeto a IVA al 21%. Si aún no lo estuviera, el margen sería ~6 € mayor
  por pedido.

### Costes

| Concepto | Coste (sin IVA) |
|---|---|
| Kit Restaurador de Faros | 3,69 € |
| Spray cerámico 3 en 1 | 2,89 € |
| Restaurador de plásticos | 1,99 € |
| **Complemento (los dos juntos)** | **4,88 €** |
| Envío por pedido (Dropipro) | ~6,50 € |
| Envío incremental del upsell | ~0 € (mismo paquete) |

### Envío cobrado al cliente [Shopify]

| Zona | Tarifa | Estado |
|---|---|---|
| España peninsular (47 provincias) | 6,99 € · gratis desde 55 € | Activa |
| UE | 8,99 € | Desactivada |
| Internacional | 12,99 € | Desactivada |

Único destino operativo: **España peninsular**. Las tarifas internacionales se
conservan desactivadas a la espera de los costes reales de Dropipro por destino;
a 8,99 € la UE, con un envío nacional que ya cuesta 6,50 €, cada pedido habría
perdido dinero.

Desde el 2026-09-10 quedan **excluidos Baleares, Canarias, Ceuta y Melilla**: están
fuera del territorio IVA de la UE y cada envío habría generado aduanas, IGIC o IPSI.

**El umbral de envío gratis nunca se alcanza:** el subtotal máximo posible con el
catálogo actual es 49,98 € (kit + complemento). La condición está configurada a
55 €. Es configuración muerta.

### Margen de contribución

| | Kit solo | Kit + complemento |
|---|---|---|
| Subtotal | 34,99 € | 49,98 € |
| Envío cobrado | 6,99 € | 6,99 € |
| **Total pedido** | **41,98 €** | **56,97 €** |
| Ingreso neto (÷1,21) | 34,69 € | 47,08 € |
| − COGS | 3,69 € | 8,57 € |
| − Envío real | 6,50 € | 6,50 € |
| − Pasarela | 1,05 € | 1,33 € |
| **= Margen de contribución** | **23,46 €** | **30,68 €** |
| Margen sobre ingreso neto | 67,6% | 65,2% |

**El upsell aporta +7,22 € de margen: sube el CPA máximo un 31%.** No es un extra,
es parte del modelo de negocio.

### CPA máximo y ROAS objetivo

ROAS calculado sobre el valor bruto del pedido, que es como lo reportan Meta y
Google.

| | Kit solo | Kit + complemento |
|---|---|---|
| CPA de equilibrio (margen = gasto) | 23,46 € | 30,68 € |
| ROAS de equilibrio | 1,79 | 1,86 |
| CPA objetivo dejando 30% de margen | 16,42 € | 21,48 € |
| ROAS objetivo | 2,56 | 2,65 |

**Regla operativa: por debajo de ROAS 1,8 se pierde dinero. El objetivo de trabajo
es 2,6.**

### Palancas de margen, por tamaño

1. **El envío es el mayor coste unitario: 6,50 €, un 76% más que el COGS del kit.**
   Renegociar la tarifa con Dropipro es la palanca más grande que existe. Cada euro
   que baje es un euro directo de CPA máximo.
2. **Cobrando 6,99 € todavía se pierden 0,72 € por pedido**, porque el envío también
   lleva IVA: 6,99 / 1,21 = 5,78 € netos contra 6,50 € de coste. Para cubrirlo
   habría que cobrar 7,87 €.
3. **Markup del kit: 9,5× sobre coste.** Sano para la categoría. El problema del
   margen no es el precio de compra, es la logística.

### Hipótesis de precio pendiente de test

Precio todo incluido con envío gratis, en vez de precio bajo + envío al checkout:

| | Hoy | Propuesta |
|---|---|---|
| Precio mostrado | 34,99 € + 6,99 € envío | 42,99 € envío gratis |
| Lo que paga el cliente | 41,98 € | 42,99 € (+1,01 €) |
| Margen | 23,46 € | **24,27 €** |
| Con upsell | 30,68 € | **31,50 €** |

Mismo desembolso para el cliente, ~0,80 € más de margen por pedido, y elimina la
sorpresa del coste de envío en el checkout, que es una de las causas principales de
abandono de carrito. Requiere test con criterio de éxito definido antes de fijarlo.

A 39,99 € con envío gratis el margen baja a 21,85 € y haría falta una subida de
conversión del **7,4%** solo para empatar.

## Estado operativo

| Métrica | Valor |
|---|---|
| Fulfillment | Dropipro (agencia) |
| Pasarela | Shopify Payments |
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
6. **Umbral de envío gratis inalcanzable** (55 € contra un subtotal máximo de
   49,98 €). No hace daño hoy porque nunca se dispara, pero se activará sola en
   cuanto se añada un producto o un pack de 2 unidades. Decidir a conciencia:
   bajarla a 45 € cuesta 5,64 € de margen en cada pedido con upsell, así que solo
   compensa si multiplica por más de 4,5 la tasa de adjunción. No es la vía.

## Canales

[PENDIENTE] Ninguno activo. Por definir cuáles y con qué presupuesto de arranque.

## Competencia

[PENDIENTE] Sin identificar. Categoría con mucha oferta en Amazon y marcas
establecidas de cuidado del automóvil.

## Objetivos

[PENDIENTE] Sin definir para el trimestre.

## Próximos pasos acordados

_Se rellenará al cerrar los datos pendientes._
