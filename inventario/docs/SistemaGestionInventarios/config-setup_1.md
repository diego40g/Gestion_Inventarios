# ⚙️ Configuración Inicial del Proyecto Java Maven

**Sprint:** 1 | **Prioridad:** Alta

---

## 📝 Descripción

Preparación del entorno de desarrollo Java para el proyecto de Sistema de Gestión de Inventario usando Maven.

---

## ✅ Checklist de Tareas

### Requisitos Previos

- [ ] Verificar Java JDK instalado: `java -version` (mínimo JDK 17, recomendado JDK 21+)
- [ ] Verificar Maven instalado: `mvn -version` (mínimo Maven 3.6+)
- [ ] Verificar variable JAVA_HOME configurada: `echo $JAVA_HOME`
- [ ] IDE recomendado: VS Code, IntelliJ IDEA o Eclipse

### Estructura del Proyecto Maven

- [ ] Verificar estructura Maven estándar existe:
  - `src/main/java/` - Código fuente
  - `src/main/resources/` - Recursos (JSON, properties)
  - `src/test/java/` - Tests unitarios
  - `src/test/resources/` - Recursos para tests
  - `pom.xml` - Configuración Maven

### Configuración pom.xml

- [ ] Verificar dependencias en `pom.xml`:
  - Gson para JSON (com.google.code.gson:gson:2.10.1)
  - JUnit 5 para tests (org.junit.jupiter:junit-jupiter-api:5.10.1)
- [ ] Verificar propiedades:
  - `maven.compiler.source` = 17 o superior
  - `maven.compiler.target` = 17 o superior
  - `project.build.sourceEncoding` = UTF-8

### Estructura de Paquetes

- [ ] Crear paquetes base:
  - `ec.edu.istpet.inventario.domain` - Entidades de dominio
  - `ec.edu.istpet.inventario.application` - Lógica de negocio
  - `ec.edu.istpet.inventario.application.servicios` - Servicios
  - `ec.edu.istpet.inventario.application.estrategias` - Estrategias (patrones)
  - `ec.edu.istpet.inventario.application.factory` - Factories
  - `ec.edu.istpet.inventario.infrastructure` - Infraestructura
  - `ec.edu.istpet.inventario.infrastructure.repositorios` - Repositorios
  - `ec.edu.istpet.inventario.infrastructure.persistencia` - Persistencia
  - `ec.edu.istpet.inventario.infrastructure.notificaciones` - Notificaciones
  - `ec.edu.istpet.inventario.presentation` - Capa de presentación
  - `ec.edu.istpet.inventario.presentation.menus` - Menús CLI

### Directorio de Recursos

- [ ] Crear carpetas en `src/main/resources/`:
  - `data/` - Archivos JSON de datos
  - `logs/` - Archivos de log (opcional)
- [ ] Crear archivos JSON vacíos:
  - `data/productos.json` (contenido: `[]`)
  - `data/ventas.json` (contenido: `[]`)
  - `data/categorias.json` (contenido: `[]`)
  - `data/proveedores.json` (contenido: `[]`)

### Configuración de Tests

- [ ] Verificar JUnit 5 en pom.xml:
  ```xml
  <dependency>
      <groupId>org.junit.jupiter</groupId>
      <artifactId>junit-jupiter-api</artifactId>
      <version>5.10.1</version>
      <scope>test</scope>
  </dependency>
  ```
- [ ] Configurar Maven Surefire Plugin para tests
- [ ] Configurar JaCoCo para coverage (opcional):
  ```xml
  <plugin>
      <groupId>org.jacoco</groupId>
      <artifactId>jacoco-maven-plugin</artifactId>
      <version>0.8.11</version>
  </plugin>
  ```

### Herramientas de Calidad de Código

- [ ] Configurar Maven Checkstyle Plugin (opcional)
- [ ] Configurar SpotBugs (opcional para análisis estático)
- [ ] Configurar formato de código en IDE

### Git

- [ ] Verificar `.gitignore` incluya:
  - `target/` - Archivos compilados
  - `*.class` - Clases compiladas
  - `*.jar` - JARs generados
  - `.settings/` - Configuración Eclipse
  - `.vscode/` - Configuración VS Code
  - `.idea/` - Configuración IntelliJ
  - `*.iml` - Archivos IntelliJ
- [ ] Commit inicial de la configuración

### Archivos de Configuración

- [ ] `src/main/resources/application.properties` (propiedades de aplicación)
- [ ] `.editorconfig` (opcional, estilo de código)

---

## 📝 Comandos Maven Básicos

```bash
# Compilar el proyecto
mvn compile

# Compilar y ejecutar tests
mvn test

# Limpiar y compilar
mvn clean compile

# Crear JAR ejecutable
mvn clean package

# Ejecutar la aplicación (si tiene main)
mvn exec:java -Dexec.mainClass="ec.edu.istpet.inventario.Main"

# Ejecutar tests con coverage
mvn test jacoco:report

# Ver árbol de dependencias
mvn dependency:tree

# Actualizar dependencias
mvn versions:display-dependency-updates
```

---

## 📝 Comandos para Crear Estructura (Linux/Mac)

```bash
# Crear estructura de paquetes
mkdir -p src/main/java/ec/edu/istpet/inventario/{domain,application/{servicios,estrategias,factory},infrastructure/{repositorios,persistencia,notificaciones},presentation/menus}

# Crear recursos
mkdir -p src/main/resources/{data,logs}
echo "[]" > src/main/resources/data/productos.json
echo "[]" > src/main/resources/data/ventas.json
echo "[]" > src/main/resources/data/categorias.json
echo "[]" > src/main/resources/data/proveedores.json

# Crear estructura de tests
mkdir -p src/test/java/ec/edu/istpet/inventario/{domain,application,infrastructure}
```

---

## 📂 Archivos Clave

- [ ] `pom.xml` - Configuración Maven
- [ ] `src/main/java/ec/edu/istpet/inventario/Main.java` - Punto de entrada
- [ ] `src/main/resources/application.properties` - Configuración
- [ ] `.gitignore` - Exclusiones Git
- [ ] `README.md` - Documentación del proyecto

---

## ✅ Criterio de Completitud

La configuración está completa cuando:

- ✅ `mvn compile` ejecuta sin errores
- ✅ `mvn test` ejecuta sin errores (aunque no haya tests aún)
- ✅ La estructura de paquetes está creada
- ✅ Los archivos JSON de recursos existen
- ✅ Todas las dependencias se descargan correctamente
- ✅ El IDE reconoce el proyecto Maven

---

## 📝 Notas

_Registra aquí cualquier problema encontrado durante la configuración_

---

## 🔗 Referencias

- [Maven Getting Started](https://maven.apache.org/guides/getting-started/)
- [JUnit 5 User Guide](https://junit.org/junit5/docs/current/user-guide/)
- [Gson Documentation](https://github.com/google/gson/blob/master/UserGuide.md)
