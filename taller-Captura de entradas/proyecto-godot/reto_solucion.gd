extends Node2D
## SOLUCIÓN DEL RETO · Grupo 3 · "Pintor de puntos"
## Godot 4.7.x · GDScript
##
## R1. Cada clic izquierdo deja un punto en la posición del clic.
## R2. La rueda del ratón agranda o achica el tamaño del próximo punto,
##     y el Label muestra el tamaño actual.
## R3. La acción "borrar" (tecla C o botón Y del mando) elimina todos los puntos.


var tamano: float = 20.0   # Lado en píxeles del próximo punto
@onready var info: Label = $Info


func _ready() -> void:
	actualizar_info()


func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed:
		match event.button_index:
			MOUSE_BUTTON_LEFT:
				crear_punto(event.position)                  # R1: dato del evento
			MOUSE_BUTTON_WHEEL_UP:
				tamano = minf(tamano + 4.0, 80.0)            # R2: la rueda también
				actualizar_info()                            # es InputEventMouseButton
			MOUSE_BUTTON_WHEEL_DOWN:
				tamano = maxf(tamano - 4.0, 4.0)
				actualizar_info()
	elif event.is_action_pressed("borrar"):                  # R3: acción
		for punto in get_tree().get_nodes_in_group("puntos"):
			punto.queue_free()


func crear_punto(pos: Vector2) -> void:
	var punto := ColorRect.new()
	punto.size = Vector2(tamano, tamano)
	punto.position = pos - punto.size / 2.0       # Centrado en el clic
	punto.color = Color.from_hsv(randf(), 0.7, 0.95)
	punto.mouse_filter = Control.MOUSE_FILTER_IGNORE
	punto.add_to_group("puntos")                  # Para poder borrarlos juntos
	add_child(punto)


func actualizar_info() -> void:
	info.text = "Tamaño del próximo punto: %d px  ·  Rueda = tamaño  ·  C = borrar" % int(tamano)
