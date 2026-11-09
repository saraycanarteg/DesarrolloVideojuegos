# Taller PRACT-EXP: investiga un dispositivo de entrada

**Asignatura:** Desarrollo de Videojuegos · Ingeniería de Software · Unidad 2.1
**Carpeta de entrega en GitHub:** `taller-2.1.1`
**Dispositivo elegido:** Gamepad

---

## FICHA DE DISPOSITIVO

| Campo | Contenido |
|---|---|
| **NOMBRE** | Gamepad (mando de videojuegos, *joypad* o controlador) |
| **AÑO Y FABRICANTE** | **1983 – Nintendo**, con el mando del Famicom (NES en 1985). Su cruceta (D-pad) nació en 1982 en la Game & Watch *Donkey Kong*. La versión con sticks analógicos duales llegó en **1997 con Sony** (Dual Analog y DualShock). |
| **TECNOLOGÍA DE CAPTURA** | Botones y D-pad: interruptores de membrana con goma conductiva que cierran un circuito. Sticks y gatillos: potenciómetros (PlayStation), codificadores ópticos (Nintendo 64) o sensores de efecto Hall (mandos modernos). Modelos actuales: giroscopio y acelerómetro. |
| **TIPO DE SEÑAL** | ☑ **Digital** (botones, D-pad) · ☑ **Analógica** (sticks, gatillos) · ☑ **Sensor** (movimiento, en modelos modernos). Es un dispositivo **híbrido**. |
| **JUEGO EJEMPLO** | *Super Mario Bros.* (1985) y *Super Mario 64* (1996) |
| **FUENTE** | Ver sección 6 (enlaces al final) |

---

## 1. Elección del dispositivo

**GAMEPAD**

## 2. Historia

| Año | Hito |
|---|---|
| 1982 | Nintendo lanza la Game & Watch de *Donkey Kong*, que estrena la cruceta en forma de cruz. Gunpei Yokoi la usó para reproducir los controles de la máquina arcade en un aparato portátil. Se atribuye el diseño de la cruz a Ichiro Shirai. |
| 1983 | Salen el Famicom y su mando en Japón (15 de julio). El D-pad pasa a ser el control direccional estándar de las consolas de sobremesa. |
| 1985 | La NES llega a Norteamérica. Su mando tiene D-pad, dos botones de acción, Start y Select, y sentó las bases de casi todos los mandos posteriores. |
| 1996 | Nintendo 64 (23 de junio en Japón). Es el primer mando de Nintendo con stick analógico, diseñado a la par que *Super Mario 64*. |
| 1997 | Sony lanza el Dual Analog (25 de abril, Japón) y el DualShock (20 de noviembre, Japón; 1998 en el resto del mundo). Ambos tienen dos sticks analógicos; el DualShock añade vibración. |
| Hoy | Sticks con sensores Hall (sin contacto, menos *drift*), gatillos adaptativos, giroscopio y háptica avanzada. |


## 3. Clasificación de la señal

| Componente | Cómo capta al jugador | Tipo de señal | Qué datos entrega |
|---|---|---|---|
| Botones (A, B, X, Y, Start…) | Una almohadilla de goma conductiva cierra el circuito al presionar | **Digital** | 0 o 1 (suelto / presionado) |
| D-pad (cruceta) | Contactos eléctricos fijos, uno por dirección | **Digital** | Arriba, abajo, izquierda o derecha (8 direcciones combinando) |
| Sticks analógicos | Dos potenciómetros (ejes X e Y), o codificadores ópticos (N64) o sensores Hall | **Analógica** | Posición en cada eje, en un rango continuo (en DualShock, 8 bits: 0–255) |
| Gatillos analógicos (L2/R2) | Sensor de recorrido o presión | **Analógica** | Cuánto está presionado el gatillo |
| Giroscopio / acelerómetro | Sensores de movimiento (modelos modernos) | **Sensor** | Rotación e inclinación del mando |


## 4. Videojuegos reales que lo hicieron popular

### *Super Mario Bros.* (Nintendo, 1985, NES)
- Se jugaba solo con el D-pad y dos botones (correr y saltar), un esquema simple que cualquiera aprendía en minutos.
- Ayudó a que el mando de la NES se convirtiera en el modelo a imitar. Ese mando contribuyó a reactivar la industria tras la crisis de 1983.
- Mostró que un gamepad podía dar control preciso en juegos de plataformas 2D.

### *Super Mario 64* (Nintendo, 1996, Nintendo 64)
- Fue el juego que popularizó el stick analógico en consola. Nintendo diseñó el mando y el juego a la vez.
- El stick permite moverse en 360° y controlar la velocidad según cuánto se inclina: una inclinación leve hace que Mario camine despacio y una completa lo hace correr.
- Mostró que el D-pad no bastaba para moverse con precisión en 3D, y marcó el camino de los controles de plataformas 3D posteriores.

## 5. Fuentes

- Digital Game Museum – *Donkey Kong II (1983)*, origen del D-pad: https://www.digitalgamemuseum.org/consolecontrollerevolution/d-pad/donkeykongii
- Wikipedia – *D-pad*: https://en.wikipedia.org/wiki/D-pad
- TechRadar – *A brief history of Nintendo controllers*: https://www.techradar.com/news/how-we-got-to-the-switch-a-brief-history-of-nintendo-controllers
- Nintendo Nexus – *NES controllers* (fechas de lanzamiento): https://sites.google.com/view/nintendo-nexus/nes-controllers
- Wikipedia – *Analog stick*: https://en.wikipedia.org/wiki/Analog_stick
- Wikipedia – *DualShock*: https://en.wikipedia.org/wiki/DualShock
- Indie-Games.eu – *Sony's Dual Analog Controller*: https://www.indie-games.eu/how-sonys-forgotten-dual-analog-controller-shaped-modern-gaming
- Digital Game Museum – *Nintendo 64 Controller (1996)*: https://www.digitalgamemuseum.org/consolecontrollerevolution/analog/n64
- Digital Game Museum – *Super Mario 64 (1996)*: https://www.digitalgamemuseum.org/consolecontrollerevolution/analog/mario64
- Shacknews – *How Nintendo 64 revolutionized 3D game design*: https://www.shacknews.com/article/95496/changing-the-system-how-nintendo-64-revolutionized-3d-game-design
- TechSpot – *Anatomy of a Gamepad*: https://www.techspot.com/article/2182-anatomy-gamepad
- Desmontaje de un mando PS4 (botones con goma conductiva, stick con potenciómetros): https://voicetube.com/videos/159755

