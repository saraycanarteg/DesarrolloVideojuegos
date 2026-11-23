# Reto · Grupo 3 · «Pintor de puntos»

**Tiempo:** 7 minutos ·

## Enunciado
Completen la función `_input(event)` de `reto_inicio.gd` para que cada clic izquierdo deje un punto donde se hizo clic,
la rueda del ratón cambie el tamaño del próximo punto y la acción `borrar` limpie la pantalla.

## Requisitos comprobables
| N.º | Requisito | Qué debe verse en pantalla |
|---|---|---|
| R1 | Clic izquierdo → `crear_punto(event.position)` | Aparece un cuadro de color exactamente donde se hizo clic |
| R2 | Rueda arriba/abajo → cambia `tamano` entre 4 y 80 px y llama a `actualizar_info()` | El texto superior cambia de número y los nuevos puntos salen más grandes o más pequeños |
| R3 | Acción `borrar` (tecla C) → elimina los nodos del grupo `"puntos"` | Al pulsar C desaparecen todos los puntos |

**Logrado** = se cumplen R1, R2 y R3 al ejecutar la escena con F6.

## Pista 
> La rueda **no** es un evento aparte: también es `InputEventMouseButton`. Comparen `event.button_index` con
> `MOUSE_BUTTON_WHEEL_UP` y `MOUSE_BUTTON_WHEEL_DOWN`. Para borrar, recorran `get_tree().get_nodes_in_group("puntos")`.

## Solución 
```gdscript
func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed:
		match event.button_index:
			MOUSE_BUTTON_LEFT:
				crear_punto(event.position)                  # R1: dato del evento
			MOUSE_BUTTON_WHEEL_UP:
				tamano = minf(tamano + 4.0, 80.0)            # R2
				actualizar_info()
			MOUSE_BUTTON_WHEEL_DOWN:
				tamano = maxf(tamano - 4.0, 4.0)
				actualizar_info()
	elif event.is_action_pressed("borrar"):                  # R3: acción
		for punto in get_tree().get_nodes_in_group("puntos"):
			punto.queue_free()
```
