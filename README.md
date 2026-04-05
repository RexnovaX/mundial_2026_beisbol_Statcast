# ⚾ World Baseball Classic Analysis: Statcast Edition (2024-2025)

![Demo del Dashboard](./Capturas/Demo del Dashboard.gif)

## 📋 Resumen del Proyecto
Este proyecto es un ecosistema de datos completo que analiza el rendimiento de los jugadores de la MLB en la temporada 2024-2025 de cara al World Baseball Classic. Abarca desde la ingesta de datos en una base de datos relacional hasta la creación de un dashboard interactivo de alto impacto visual (Dark Mode) en Power BI.

---

## 🛠️ Stack Tecnológico & Proceso
El proyecto se dividió en tres fases técnicas fundamentales:

1.  **Arquitectura de Datos (SQL):** Se diseñó e implementó una base de datos en **PostgreSQL** para centralizar los archivos Statcast (.csv). Esto permitió manejar relaciones complejas entre rosters, estadios y métricas de juego.
2.  **ETL & Limpieza (Power Query/M):** Se realizaron transformaciones avanzadas para normalizar los datos, traducir categorías técnicas al español para mejorar la experiencia de usuario y optimizar los tipos de datos para el motor de Power BI.
3.  **Visualización & UX (Power BI):** * Diseño inmersivo en **Dark Mode**.
    * Navegación mediante **Marcadores (Bookmarks)** para alternar dinámicamente entre métricas de bateo y pitcheo.
    * Menús interactivos basados en banderas para filtrado por país.

---

## 📈 Análisis de Resultados (Proyección vs. Realidad)

### Expectativas Basadas en Estadísticas
* **Estados Unidos:** La selección más completa. Con figuras como **Aaron Judge** y **Bryce Harper**, lideraban las proyecciones de poder.
* **República Dominicana:** La ofensiva más temible. Métricas de élite con **Guerrero Jr.** y **Juan Soto**.
* **Venezuela:** Una selección sumamente equilibrada. Destacando por su consistencia al bate con **Luis Arráez** y **Salvador Pérez**.
* **Japón:** Aunque el modelo (basado en MLB) subestimaba su profundidad, estrellas como **Ohtani** y **Yamamoto** los mantenían en el top 4.

### Hallazgos del Torneo
* 🏆 **Campeón (Venezuela):** Los datos respaldaron su victoria. Su consistencia estadística les permitió un paso sólido, coronándose tras vencer a potencias como USA y Japón.
* 🥈 **Subcampeón (Estados Unidos):** Confirmaron su estatus de potencia mundial, llegando a una final cerrada definida por detalles mínimos.
* 🐎 **Sorpresa (Italia):** El equipo que desafió la estadística. Con un roster joven, superaron a selecciones con mejores métricas previas.
* 📉 **Decepción (República Dominicana):** A pesar de tener la segunda mejor proyección estadística, no lograron capitalizar su potencial ofensivo en las instancias decisivas.

---

## 📁 Estructura del Repositorio
* `/capturas`: Imágenes de alta resolución de cada página del dashboard y video demostrativo.
* `/scripts`:
    * `esquema_db.sql`: Script de creación de tablas en PostgreSQL.
    * `limpieza_M.txt`: Código de las transformaciones realizadas en el Editor Avanzado de Power Query.
* `WBC_Dashboard.pbix`: Archivo fuente de Power BI.

---

## 💡 Sobre el Desarrollador
Proyecto desarrollado por un estudiante de **Análisis de Sistemas** apasionado por la analítica de datos y el deporte. Este dashboard demuestra habilidades en modelado SQL, procesos ETL y diseño de interfaces de Business Intelligence.