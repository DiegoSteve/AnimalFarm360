# AnimalFarm360

## Descripción del Proyecto
AnimalFarm360 es una plataforma integral de gestión de granjas de animales, diseñada para mejorar el bienestar animal, aumentar la eficiencia operativa y promover la sostenibilidad económica de las operaciones ganaderas mediante el uso de tecnologías avanzadas como IoT y análisis de datos.

## 1. Usuarios
**Número de usuarios recomendados:**
- **Administrador(es):** 1-2. Tendrán acceso completo a todas las funcionalidades del sistema.
- **Encargados de sección:** 3-5. Responsables de diferentes áreas como alimentación, salud, y registro.
- **Veterinarios:** 2-3. Encargados de la salud de los animales, seguimiento de tratamientos y vacunas.
- **Trabajadores:** Dependiendo del tamaño de la granja, pueden ser de 5-10. Gestionan tareas diarias y actualizan información básica.

**Razón:**
Este número permite una gestión eficiente y organizada de la granja sin saturar el sistema, asegurando que cada rol esté claramente definido y no haya duplicidad de funciones.

## 2. Datos para Registro de Animales
- ID del animal
- Especie (vaca, caballo, cerdo, oveja, chivo)
- Raza
- Fecha de nacimiento
- Peso inicial
- Género
- Estado (productor, sacrificio, pura raza, etc.)
- Fecha de adquisición
- Proveedor (en caso de compra)
- Ubicación (corral o jaula)
- Historia de salud (tratamientos y vacunas)
- Producción (cantidad de leche, carne, etc., si aplica)
- Comentarios adicionales

## 3. Gestión de Corrales y Jaulas
- ID del corral/jaula
- Capacidad máxima
- Tipo de corral/jaula (según especie)
- Lista de animales en el corral/jaula
- Condiciones del corral/jaula (limpieza, temperatura, etc.)

## 4. Gestión de Inventario
- ID del producto
- Tipo de producto (alimento, medicina, utensilios, etc.)
- Cantidad
- Unidad de medida (kg, litros, unidades, etc.)
- Fecha de adquisición
- Proveedor
- Fecha de expiración (si aplica)
- Uso diario (registro de uso para alertas)

## 5. Alertas y Notificaciones
- **Alerta de inventario bajo:** Basado en el consumo diario registrado.
- **Alertas de tratamientos y vacunas:** Recordatorios según el calendario de salud de cada animal.
- **Alertas de citas veterinarias:** Programadas y recordadas con antelación.
- **Pendientes importantes:** Cualquier tarea crítica que requiera atención inmediata.

## 6. Reportes
**Reportes diarios, semanales y mensuales:**
- Estado general de los animales
- Consumo de alimento
- Tratamientos y vacunas realizados
- Producción (si aplica)
- Inventario de recursos

## 7. Funcionalidades Adicionales
- **Integración con dispositivos IoT:** Sensores de temperatura, humedad, y cámaras de vigilancia para monitoreo en tiempo real.
- **Panel de control:** Vista general del estado de la granja con gráficos y estadísticas clave.
- **Gestión de usuarios y roles:** Definir permisos y accesos según el rol de cada usuario.

## Roles y Permisos en AnimalFarm360

**1. Administrador**
- Acceso completo a todas las funcionalidades del sistema.
- Gestión de usuarios: Crear, editar y eliminar usuarios. Asignar roles.
- Gestión de animales: Crear, editar, visualizar y eliminar registros de animales.
- Gestión de corrales/jaulas: Crear, editar, visualizar y eliminar corrales/jaulas.
- Gestión de inventarios: Crear, editar, visualizar y eliminar inventarios de recursos.
- Gestión de tratamientos/vacunas: Crear, editar, visualizar y eliminar registros de tratamientos y vacunas.
- Generación de reportes: Acceso a todos los tipos de reportes (diarios, semanales, mensuales).
- Configuración del sistema: Ajustar configuraciones generales del sistema.
- Visualización de alertas y notificaciones: Ver todas las alertas y notificaciones del sistema.
- Acceso a panel de control: Vista general del estado de la granja con gráficos y estadísticas.

**2. Encargado de Sección**
- Acceso limitado a las funcionalidades relacionadas con su área de responsabilidad.
- Gestión de animales: Crear, editar y visualizar registros de animales.
- Gestión de corrales/jaulas: Crear, editar y visualizar corrales/jaulas.
- Gestión de inventarios: Crear, editar y visualizar inventarios de recursos.
- Gestión de tratamientos/vacunas: Crear, editar y visualizar registros de tratamientos y vacunas.
- Generación de reportes: Acceso a reportes específicos de su área (por ejemplo, inventario o salud animal).
- Visualización de alertas y notificaciones: Ver alertas y notificaciones relacionadas con su área.

**3. Veterinario**
- Acceso a funcionalidades relacionadas con la salud y bienestar de los animales.
- Gestión de animales: Visualizar registros de animales.
- Gestión de tratamientos/vacunas: Crear, editar y visualizar registros de tratamientos y vacunas.
- Generación de reportes: Acceso a reportes de salud animal.
- Visualización de alertas y notificaciones: Ver alertas y notificaciones relacionadas con tratamientos y vacunas.
- Acceso a panel de control: Vista general del estado de salud de los animales.

**4. Trabajador**
- Acceso básico para realizar tareas diarias y actualizar información básica.
- Gestión de animales: Visualizar registros de animales.
- Gestión de corrales/jaulas: Visualizar corrales/jaulas asignados.
- Gestión de inventarios: Actualizar cantidades de inventarios (registro de uso diario).
- Gestión de tratamientos/vacunas: Registrar tratamientos y vacunas realizados.
- Generación de reportes: Acceso limitado a reportes diarios.
- Visualización de alertas y notificaciones: Ver alertas y notificaciones asignadas a sus tareas.

## Descripción de Relaciones

### Users (Usuarios)
- Relación uno a muchos con Alerts (Alertas): Un usuario puede tener muchas alertas. Cada alerta pertenece a un solo usuario.
  - Relaciones directas: `user_id` en la tabla `alerts` referencia la `id` en la tabla `users`.

### Animals (Animales)
- Relación muchos a uno con Corrals (Corrales): Muchos animales pueden estar en un corral. Cada animal pertenece a un solo corral.
- Relación uno a muchos con Treatments (Tratamientos): Un animal puede tener muchos tratamientos o vacunas. Cada tratamiento o vacuna pertenece a un solo animal.
  - Relaciones directas:
    - `corral_id` en la tabla `animals` referencia la `id` en la tabla `corrals`.
    - `animal_id` en la tabla `treatments` referencia la `id` en la tabla `animals`.

### Corrals (Corrales)
- Relación uno a muchos con Animals (Animales): Un corral puede contener muchos animales. Cada animal está asignado a un solo corral.
  - Relaciones directas: `corral_id` en la tabla `animals` referencia la `id` en la tabla `corrals`.

### Inventories (Inventarios)
- Relaciones: No hay relaciones directas con otras tablas, pero pueden estar relacionadas indirectamente a través de alertas y reportes.

### Treatments (Tratamientos)
- Relación muchos a uno con Animals (Animales): Muchos tratamientos o vacunas pueden ser aplicados a un solo animal. Cada tratamiento o vacuna pertenece a un solo animal.
  - Relaciones directas: `animal_id` en la tabla `treatments` referencia la `id` en la tabla `animals`.

### Alerts (Alertas)
- Relación muchos a uno con Users (Usuarios): Muchas alertas pueden pertenecer a un solo usuario. Cada alerta está asociada a un solo usuario.
  - Relaciones directas: `user_id` en la tabla `alerts` referencia la `id` en la tabla `users`.

### Reports (Reportes)
- Relaciones: Los reportes pueden estar relacionados con usuarios, animales, corrales, inventarios, tratamientos y alertas para consolidar la información necesaria.
