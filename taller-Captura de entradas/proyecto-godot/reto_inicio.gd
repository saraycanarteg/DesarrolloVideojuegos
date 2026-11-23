extends Node2D
## RETO · Grupo 3 · "Pintor de puntos"  (plantilla para los compañeros)
##
## Completen _input(event) para que:
## R1. Cada clic izquierdo deje un punto en la posición del clic
##     (usen la función crear_punto, ya hecha).
## R2. La rueda del ratón agrande o achique el tamaño del próximo punto
##     (entre 4 y 80 px) y el Label lo muestre (usen actualizar_info).
## R3. La acción "borrar" (ya creada en el Input Map, tecla C) elimine
##     todos los puntos.


var tamano: float = 20.0   # Lado en píxeles del próximo punto
@onready var info: Label = $Info


func _ready() -> void:
	actualizar_info()


func _input(event: InputEvent) -> void:
	pass   # <-- Escriban aquí su código


func crear_punto(pos: Vector2) -> void:
	var punto := ColorRect.new()
	punto.size = Vector2(tamano, tamano)
	punto.position = pos - punto.size / 2.0
	punto.color = Color.from_hsv(randf(), 0.7, 0.95)
	punto.mouse_filter = Control.MOUSE_FILTER_IGNORE
	punto.add_to_group("puntos")
	add_child(punto)


func actualizar_info() -> void:
	info.text = "Tamaño del próximo punto: %d px  ·  Rueda = tamaño  ·  C = borrar" % int(tamano)
