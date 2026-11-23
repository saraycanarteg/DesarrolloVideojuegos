extends Node2D
## Ejercicio · Grupo 3 · Captura con _input(event)
## Godot 4.7.x · GDScript
##
## Demuestra dos formas de reaccionar a la entrada dentro de _input(event):
##   1) Por TIPO DE EVENTO y sus DATOS propios: el clic izquierdo mueve el
##      marcador a la posición exacta del clic (event.position); el clic
##      derecho le cambia el color.
##   2) Por ACCIÓN: la acción "saltar" (Espacio, W o botón A del mando) hace
##      saltar al jugador, sin importar qué tecla o botón la disparó.


var clics: int = 0          # Contador de clics izquierdos
var saltos: int = 0         # Contador de saltos
var y_suelo: float = 0.0    # Altura inicial del jugador (el "suelo")
var tween_salto: Tween      # Animación del salto en curso
@onready var marcador: ColorRect = $Marcador   # Cuadro que sigue a los clics
@onready var jugador: ColorRect = $Jugador     # Cuadro que salta con la acción
@onready var info: Label = $Info               # Muestra qué evento llegó


func _ready() -> void:
	y_suelo = jugador.position.y   # Guardamos la altura de partida
	info.text = "Haz clic en la ventana o pulsa Espacio / W / botón A"


func _input(event: InputEvent) -> void:
	# --- Reacción 1: según el TIPO de evento y sus DATOS ---
	# "is" comprueba la clase; solo así es seguro leer event.position.
	# "event.pressed" filtra: sin él, cada clic se procesaría dos veces
	# (al presionar y al soltar el botón).
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == MOUSE_BUTTON_LEFT:
			clics += 1
			# Centramos el marcador sobre el punto donde se hizo clic
			marcador.position = event.position - marcador.size / 2.0
			info.text = "Clic izquierdo n.º %d en (%d, %d)" % [
				clics, event.position.x, event.position.y]
		elif event.button_index == MOUSE_BUTTON_RIGHT:
			# Otro dato del mismo evento: qué botón se pulsó
			marcador.color = Color.from_hsv(randf(), 0.7, 0.95)
			info.text = "Clic derecho: el marcador cambió de color"

	# --- Reacción 2: según la ACCIÓN, sin importar el dispositivo ---
	# is_action_pressed() ya ignora el "eco" de una tecla mantenida,
	# así que dejar Espacio apretado no repite el salto.
	elif event.is_action_pressed("saltar"):
		saltar()
		# as_text() describe el evento físico que disparó la acción
		info.text = "Acción \"saltar\" n.º %d (disparada por: %s)" % [
			saltos, event.as_text()]


func saltar() -> void:
	# Si ya está en el aire, no se inicia otro salto
	if tween_salto and tween_salto.is_running():
		return
	saltos += 1
	tween_salto = create_tween()
	# Sube 140 px en 0,22 s frenando, y baja acelerando
	tween_salto.tween_property(jugador, "position:y", y_suelo - 140.0, 0.22) \
		.set_trans(Tween.TRANS_QUAD).set_ease(Tween.EASE_OUT)
	tween_salto.tween_property(jugador, "position:y", y_suelo, 0.22) \
		.set_trans(Tween.TRANS_QUAD).set_ease(Tween.EASE_IN)
