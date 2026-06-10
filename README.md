# Posts App by Rafael González Montes

Aplicación Flutter para prueba técnica que consume la API pública [JSONPlaceholder](https://jsonplaceholder.typicode.com) para mostrar **posts**, sus **comentarios** (estilo chat) y sus **fotos**. Incluye búsqueda local, *pull to refresh* y manejo de errores.

## Requerimientos

- Que use arquitectura limpia .
- Usar Bloc para la gestión de estados
- Se necesita que la aplicación al ingresar muestre todos los posts, en el cual se
podrá buscar por el contenido del post, según el diseño proporcionado
- Dentro de listado de los posts se deben mostrar dos acciones por cada ítem,
mostrar comentarios y mostrar listado de fotos.
- Al seleccionar mostrar comentarios se deberá desplegar un listado en cual se
podrá buscar por todo el contenido del comentario, según el diseño
- Al seleccionar mostrar listado de fotos, se deberá mostrar una pantalla con la
colección de imágenes recuperadas


## Arquitectura

Arquitectura limpia separada en capas:

```
lib/
├── config/     # Constantes, enums y helpers
├── core/       # DI, navegación, recursos y utilidades base
├── data/       # Data sources, DTOs, repositorios_impl y servicios API
├── domain/     # Modelos, mappers, repositorios y casos de uso
└── ui/         # Páginas, widgets y BLoCs por feature
```

- **Patrón BLoC** para la gestión de estado.
- **Inyección de dependencias** con GetIt
- **Navegación declarativa** con go_router.

## Requisitos

- Flutter SDK (Dart `^3.11.0`)
- Un emulador/simulador o dispositivo físico

## Cómo ejecutar

```bash
# 1. Clonar el repositorio
git clone https://github.com/gonzalezre/prueba_tecnica_niu.git
cd prueba_tecnica_niu

# 2. Instalar dependencias
flutter pub get

# 3. Generar el código (modelos freezed, JSON y cliente Retrofit)
dart run build_runner build --delete-conflicting-outputs

# 4. Ejecutar la app
flutter run
```

> La URL base de la API está definida en `lib/config/constants/env_constants.dart`.

## Nota
el servicio https://jsonplaceholder.typicode.com/posts/{idpost}/photos GET Listado de Imágenes, no se encuentra disponible desde su origen.

## Paquetes utilizados

### Propios de Flutter / Dart

| Paquete | Uso |
|---------|-----|
| `flutter` | Framework base de la UI |
| `cupertino_icons` | Iconos con estilo iOS |
| `flutter_lints` | Reglas de análisis estático |
| `flutter_bloc` / `bloc` | Gestión de estado con el patrón BLoC |

### De terceros

| Paquete | Uso |
|---------|-----|
| `equatable` | Comparación de objetos por valor (estados y eventos) |
| `go_router` | Navegación y rutas declarativas |
| `get_it` | Inyección de dependencias |
| `dio` | Cliente HTTP para las peticiones a la API |
| `retrofit` | Cliente API construido sobre Dio |
| `internet_connection_checker` | Verifica la conexión a internet |
| `freezed_annotation` | Anotaciones para modelos inmutables |
| `json_annotation` | Anotaciones para serialización JSON |


## Capturas
<img width="1206" height="2622" alt="image" src="https://github.com/user-attachments/assets/e4565fe9-4fc9-4bed-8610-6f5c29208fd5" />
<img width="1206" height="2622" alt="image" src="https://github.com/user-attachments/assets/75f389d1-8667-46d7-8603-04ca3c6d7013" />
<img width="1206" height="2622" alt="image" src="https://github.com/user-attachments/assets/437f7b4f-d73a-4ff6-b4e0-6cad481e11af" />



