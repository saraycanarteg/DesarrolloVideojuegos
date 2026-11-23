# Clase magistral 2.1.4 - Grupo 3 - Captura con `_input(event)`

**Universidad de las Fuerzas Armadas ESPE**  
Desarrollo de Videojuegos - Unidad 2.1
**Docente:** Ing. Diego Gamboa

## Integrantes
- Danny Ayuquina
- Saray Cañarte
- Doménica Villagómez

## Subtema
Captura con `_input(event)`: comprobar la clase del evento con `is`, filtrar con `pressed`,
leer las propiedades propias de cada tipo de evento y decidir cuándo reaccionar por
**acción** y cuándo por **tipo de evento**.

## Versión de Godot
Godot **4.7.x** (probado para 4.7.2-stable), GDScript, renderizador *Compatibility*.

## Cómo ejecutar el ejercicio
1. Abrir Godot 4.7.x - **Importar**  seleccionar `proyecto-godot/project.godot`.
2. Pulsar **F5** (Ejecutar proyecto). Se abre `main.tscn`.
3. **Clic izquierdo**: el cuadro naranja salta a la posición del clic y el texto muestra las coordenadas.
4. **Clic derecho**: el cuadro naranja cambia de color.
5. **Espacio, W o botón A del mando**: el cuadro verde salta y el texto indica qué tecla o botón disparó la acción `saltar`.


## Acciones definidas en el Input Map
| Acción | Eventos asignados |
|---|---|
| `saltar` | Espacio, W, botón 0 del mando (A / Cruz) |
| `borrar` | C, botón 3 del mando (Y / Triángulo) |
