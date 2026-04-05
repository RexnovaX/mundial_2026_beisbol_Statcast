# Análisis del World Baseball Classic (Datos MLB 2024-2025) ⚾📊

## Descripción del Proyecto
Este dashboard interactivo analiza las estadísticas avanzadas (Statcast) de los jugadores participantes en el World Baseball Classic. El objetivo principal es comparar el rendimiento proyectado de las selecciones basándose en las métricas de sus jugadores en la MLB (temporada 2024-2025) y contrastarlo con los resultados reales del torneo.

## Proceso de Desarrollo (ETL y Visualización)
1. **Extracción y Exploración:** Se evaluaron y limpiaron múltiples archivos `.csv` del dataset original de Statcast/MLB para identificar las métricas de mayor impacto.
2. **Modelado de Datos:** Se centralizaron los archivos en una base de datos relacional (PostgreSQL) para garantizar la integridad de los datos y optimizar consultas.
3. **Análisis Exploratorio:** Se determinó que ciertas tablas periféricas no afectaban el resultado final, simplificando el modelo sin perder precisión analítica.
4. **Conexión y Transformación:** Se conectó Power BI directamente a la base de datos para la ingesta de la información.
5. **Diseño de Interfaz (UI/UX):** Se desarrolló una interfaz gráfica inmersiva (Dark Mode) con navegación interactiva.
6. **Interactividad:** Se configuraron marcadores (Bookmarks) y botones personalizados para segmentar dinámicamente las vistas por país y por rol (Lanzadores vs. Bateadores).

---

## Análisis Pre-Torneo (Expectativas Estadísticas)
Al evaluar el roster de las principales selecciones con datos exclusivos de la MLB, el panorama estadístico arrojó lo siguiente:

* **Estados Unidos:** La selección más completa del torneo. Con figuras como Aaron Judge, Bryce Harper y talentos emergentes como Paul Skenes, lideraban casi todas las proyecciones métricas.
* **República Dominicana:** Una potencia indiscutible. A pesar de algunas ausencias, su núcleo ofensivo (Guerrero Jr., Soto, Marte, Machado) los posicionaba como el equipo más peligroso al bate.
* **Venezuela:** El tercer equipo más fuerte estadísticamente. Una selección muy equilibrada en todas sus líneas, liderada por bates consistentes como Luis Arráez, Salvador Pérez y Eugenio Suárez.
* **Japón:** *Nota analítica importante.* El modelo presenta un sesgo natural en esta selección. Al utilizar datos exclusivos de MLB, las estadísticas globales de Japón parecen limitadas, subestimando su verdadero poderío al no contabilizar los números de la NPB (liga local japonesa). Sin embargo, con estrellas de la talla de Ohtani y Yamamoto, su proyección real era de podio.
* **Puerto Rico:** Afectados por las restricciones de la MLB sobre sus estrellas y bajas importantes como Javier Báez. Sus métricas proyectadas fueron inferiores a las de ediciones anteriores.
* **México:** Estadísticamente se mostraron como un equipo promedio dentro del modelo, sin sobresalir significativamente en los percentiles más altos de bateo o pitcheo.

**Ranking Proyectado por Estadísticas:**
1. Estados Unidos
2. República Dominicana
3. Venezuela
4. Japón (Considerando el factor NPB)

---

## Conclusiones y Resultados del Torneo
El análisis predictivo basado en datos tuvo un alto grado de correlación con la realidad del torneo, demostrando que las métricas de Statcast son excelentes indicadores de rendimiento a nivel de selecciones:

* 🏆 **El Campeón (Venezuela):** Los datos no mintieron. Siendo el #3 estadístico, demostraron su solidez. Tuvieron un camino dominante superando la fase de grupos (con un tropiezo calculable ante Dominicana) y cerraron con victorias contundentes ante Japón, Italia y USA en la final.
* 🥈 **El Subcampeón (Estados Unidos):** A pesar de las restricciones de uso con sus lanzadores, su apabullante superioridad estadística general los llevó a la final, cayendo en un partido sumamente reñido definido en la 8va entrada.
* 🐎 **La Sorpresa (Italia):** El "Caballo Negro" del torneo. Con un roster compuesto por novatos, jugadores locales y poca experiencia MLB, rompieron el modelo predictivo. Vencieron a USA en grupos y a Puerto Rico en cuartos, demostrando que en torneos cortos, el momento anímico puede desafiar la estadística.
* 📉 **La Decepción (República Dominicana):** Teniendo el segundo mejor perfil estadístico y la ofensiva más temible del torneo en papel, no lograron capitalizar sus números para alcanzar las instancias finales esperadas.