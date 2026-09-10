# Brillova — plan de puesta en marcha

Estado: **pendiente de aprobación de Pablo.** Ningún cambio aplicado a la tienda.
Cada bloque indica el cambio exacto y quién lo ejecuta.

---

## Bloque 0 — Datos que faltan (bloquea los bloques 1 y 2)

Los textos legales de `tiendas/brillova/legal/` están redactados con marcadores
`{{ }}`. Sin estos datos no se pueden publicar: la LSSI exige identificar al
vendedor con nombre, NIF, domicilio y contacto.

| Marcador | Qué es |
|---|---|
| `NOMBRE_O_RAZON_SOCIAL` | Tu nombre completo si eres autónomo, o la razón social |
| `NIF` | NIF o CIF |
| `DOMICILIO_FISCAL_COMPLETO` | Dirección fiscal real (hoy figura "conejito conejito") |
| `TELEFONO` | Teléfono de contacto publicable |
| `EMAIL_CONTACTO` | Correo de marca, p. ej. `info@brillova.es` |
| `DOMINIO` | Dominio definitivo |
| `PLAZO_PREPARACION` / `PLAZO_ENTREGA` | Plazos reales de Dropipro |
| `PLAZO_RESPUESTA` | Compromiso de respuesta de soporte (24 h / 48 h) |

Ya no falta ningún dato de envíos ni de devoluciones: solo los identificativos.

**Decisiones cerradas (2026-09-10):**

1. ~~Quién paga el envío de vuelta~~ → **lo asume el cliente.** Recogido en
   `legal/devoluciones.html`, con la excepción de producto defectuoso o erróneo,
   donde lo asumimos nosotros porque así lo exige la ley.
2. ~~Territorios extrapeninsulares~~ → **excluidos Baleares, Canarias, Ceuta y
   Melilla.** Aplicado en la tienda.

---

## Bloque 1 — Identidad de la tienda

| Campo | Ahora | Propuesto |
|---|---|---|
| Nombre | `Mi tienda` | `Brillova` |
| Dirección de facturación | `conejito conejito, malaga, 29003` | Domicilio fiscal real |
| Email de contacto | `pabloparra2911@gmail.com` | Correo de marca |
| Dominio | `d1w4ar-ee.myshopify.com` | Dominio propio |

El nombre y la dirección no son cosmética: la plantilla de privacidad de Shopify
inserta `{{ shop_name }}` y `{{ address }}` en el texto publicado. Hoy tu política
de privacidad dice que el responsable del tratamiento es "Mi tienda", con domicilio
en "conejito conejito". Eso invalida el texto y es un problema ante la AEPD.

El dominio propio lo tienes que comprar tú. Los otros tres campos los aplico yo por
MCP en cuanto me des los datos.

---

## Bloque 2 — Políticas legales

Redactadas y pendientes de tus datos. Se publican como políticas nativas de Shopify,
lo que las enlaza automáticamente en el pie y en el checkout.

| Archivo | Se publica en | Estado |
|---|---|---|
| `legal/aviso-legal.html` | `LEGAL_NOTICE` | Redactado |
| `legal/devoluciones.html` | `REFUND_POLICY` | Redactado |
| `legal/envios.html` | `SHIPPING_POLICY` | Redactado |
| `legal/terminos.html` | `TERMS_OF_SERVICE` | Redactado |
| `legal/contacto.html` | `CONTACT_INFORMATION` | Redactado |
| Política de privacidad | `PRIVACY_POLICY` | Ya existe; se corrige sola al arreglar el Bloque 1 |

Contenido: desistimiento de 14 días con formulario tipo, garantía legal de
conformidad de 3 años (Ley 4/2022), plazos de reembolso de 14 días, disminución de
valor por uso, y la cláusula de resultado esperable que ya usas en la ficha.

**No soy abogado.** Son borradores construidos sobre los requisitos del RDL 1/2007,
la Ley 4/2022 y la LSSI-CE. Para una tienda que va a facturar, que los revise un
profesional. Publicarlos ya es mejor que no tener nada, que es la situación actual.

---

## Bloque 3 — Envíos

1. ~~Desactivar envíos fuera de España~~ → **hecho.** Las tarifas de UE (8,99 €) y
   Resto del mundo (12,99 €) quedan desactivadas, no borradas: la estructura sigue
   ahí para reactivarla cuando se conozcan los costes reales de Dropipro por destino.
   `shipsToCountries` pasa de 40 países a `["ES"]`.
2. **Revisar el umbral de envío gratis de 55 €.** Inalcanzable con el catálogo actual
   (subtotal máximo 49,98 €). Dejarlo documentado o retirarlo, pero no bajarlo a 45 €:
   costaría 5,64 € de margen en cada pedido con upsell.
3. ~~Confirmar el tratamiento de Canarias, Ceuta y Melilla~~ → **hecho.** La zona
   "España" pasa de 52 a 47 provincias: quedan fuera Balears (PM), Las Palmas (GC),
   Santa Cruz de Tenerife (TF), Ceuta (CE) y Melilla (ML). Una dirección de esos
   territorios ya no puede completar el pedido.

---

## Bloque 4 — Publicar productos

Los dos están en borrador. Antes de publicar, dos cambios en la ficha del kit:

- **Falta el peso** de los artículos. Sin peso, las tarifas por peso no funcionan y
  el albarán de Dropipro puede salir mal.
- **Una sola foto** en el producto principal. Para tráfico frío hacen falta como
  mínimo un antes/después real y una foto de producto en mano.

El complemento ya tiene dos imágenes y un copy de upsell correcto.

---

## Bloque 5 — Medición

Va **antes** de la primera campaña. Sin conversiones que aprender, Meta optimiza a
ciegas y el gasto inicial se pierde entrenando a nada.

1. Canal de ventas de Facebook e Instagram → Pixel + **Conversions API** con
   deduplicación por `event_id`.
2. Verificación del dominio en Meta Business Manager y priorización de eventos web
   (Aggregated Event Measurement), obligatoria desde iOS 14.5.
3. GA4 con evento de compra verificado.
4. Ventana de atribución declarada por escrito, para que la cifra de Meta y la de
   Shopify sean comparables.
5. Prueba de extremo a extremo: un pedido real que aparezca en las tres partes.

Requiere instalar aplicaciones y tocar el Business Manager. Te preparo la secuencia
paso a paso; esa parte la haces tú.

---

## Bloque 6 — Captación de email

Con 23,46 € de margen y un upsell que aporta 7,22 €, la segunda venta es donde se
recupera el CAC. Pendiente de elegir herramienta.

---

## Orden de ejecución

```
Bloque 0  (tus datos)        →  Bloque 1  →  Bloque 2
                                    ↓
                             Bloque 3 y 4  →  Bloque 5  →  primera campaña
```

Los bloques 3 y 4 no dependen de tus datos legales: puedo hacerlos en cuanto digas.
