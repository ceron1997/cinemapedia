# cinemapedia


# Dev

1. Copiar el .env.template y renombrarlo a .env
2. Cambiar las variables de entorno (The MovieDB)



--------------------------------------------------------
# 🎬 Cinemapedia

Aplicación de películas construida con **Flutter** siguiendo el enfoque de **Clean Architecture** y utilizando **Riverpod** para la gestión del estado.

Consulta películas populares, descubre nuevos estrenos, busca por título y explora el perfil de actores, todo consumiendo la API de [The Movie Database (TMDb)](https://www.themoviedb.org/).

---

## 🚀 Características principales

- 🔎 Búsqueda de películas en tiempo real
- 🎥 Detalles completos de cada película
- ⭐ Gestión de películas favoritas
- 👤 Vista de actores y su filmografía
- 💾 Caché local para almacenamiento temporal
- 🎯 Arquitectura limpia (Domain / Infrastructure / Presentation)
- 🌐 Integración con la API de TMDb

---

## 🧱 Estructura del proyecto

```plaintext
lib/
├── domain/
│   ├── entities/          # Modelos puros (Movie, Actor, etc.)
│   ├── datasources/       # Definición de las fuentes de datos
│   └── repositories/      # Contratos de los repositorios
│
├── infrastructure/
│   ├── datasources/       # Implementaciones reales (API, HTTP)
│   ├── mappers/           # Convertidores de modelos a entidades
│   ├── models/            # Modelos generados desde respuestas JSON
│   └── repositories/      # Repositorios concretos que usan datasources
│
├── presentation/
│   ├── screens/           # Pantallas (UI)
│   ├── widgets/           # Componentes reutilizables
│   └── providers/         # Riverpod (estado, lógica, inyección)
│
├── config/                # Configuración general (temas, rutas, env vars)
└── main.dart              # Punto de entrada de la app
--------------------------------------------------------
🧩 Cómo agregar un nuevo componente (por ejemplo: Actores)
Crear la entidad en domain/entities

Definir el Datasource en domain/datasources

Definir el Repository en domain/repositories

Crear el Model a partir de una respuesta JSON en infrastructure/models
👉 Usa quicktype.io para convertir JSON a Dart

Crear el Mapper en infrastructure/mappers

Implementar el Datasource en infrastructure/datasources

Implementar el Repository en infrastructure/repositories

Crear el Provider y su implementación en presentation/providers

Consumir el Provider en un Widget o Screen en presentation/screens

📌 Los pasos 4 y 5 son opcionales, pero ayudan a mantener el código limpio y bien separado.

----------------------------------------------------
⚙️ Requisitos
Flutter 3.10 o superior
Una cuenta en TMDb para obtener la API Key

🛠️ Configuración inicial
Clona el repositorio:
git clone https://github.com/tu_usuario/cinemapedia.git
cd cinemapedia

Crea un archivo .env con tu API Key de TMDb:
TMDB_API_KEY=your_api_key_here

Instala las dependencias:
flutter pub get

Ejecuta la aplicación:
flutter run
------------------------------
🧪 Estado de desarrollo
Este proyecto está en constante evolución como parte del curso "Flutter de cero a experto" de Fernando Herrera.

👨‍🏫 Créditos
Este proyecto es parte del curso oficial:

📚 Flutter - De cero a experto

Instructor: Fernando Herrera

📄 Licencia
MIT License



----------------------------------------------------------
nuevo en flutter ? 

🚀 Crear una nueva app en Flutter
Abre una terminal (puede ser VS Code, Terminal, CMD, etc.)

Ejecuta el siguiente comando para crear el proyecto:

flutter create nombre_de_tu_app
Por ejemplo:

flutter create cinemapedia
Entra al directorio del proyecto:
cd cinemapedia

Abre el proyecto en tu editor de código (VS Code, Android Studio, etc.):


Para correr la app en un emulador o dispositivo físico:
flutter run


📦 Cosas que podrías hacer justo después de crearla

Eliminar los archivos de ejemplo en lib/main.dart

Crear tus carpetas (domain/, infrastructure/, presentation/)

Configurar el tema y rutas

Crear un archivo .env si vas a usar variables de entorno

Agregar paquetes al pubspec.yaml (ej: flutter_riverpod, dio, etc.)