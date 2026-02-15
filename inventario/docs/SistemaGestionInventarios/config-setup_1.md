# ⚙️ Configuración Inicial del Proyecto

**Sprint:** 1 | **Prioridad:** Alta

---

## 📝 Descripción

Preparación del entorno de desarrollo para el proyecto de Sistema de Gestión de Inventario.

---

## ✅ Checklist de Tareas

### Entorno Virtual

- [ ] Crear entorno virtual con `python -m venv venv`
- [ ] Activar entorno virtual
  - Linux/Mac: `source venv/bin/activate`
  - Windows: `venv\Scripts\activate`
- [ ] Verificar versión de Python >= 3.10

### Instalación de Dependencias

- [ ] Instalar pytest: `pip install pytest`
- [ ] Instalar pytest-cov: `pip install pytest-cov`
- [ ] Instalar colorama: `pip install colorama`
- [ ] Crear `requirements.txt` con todas las dependencias
- [ ] Verificar instalación: `pytest --version`

### Configuración de Testing

- [ ] Crear archivo `pytest.ini` o configurar en `pyproject.toml`
- [ ] Configurar opciones de pytest:
  ```ini
  [tool:pytest]
  testpaths = tests
  python_files = test_*.py
  python_classes = Test*
  python_functions = test_*
  ```
- [ ] Configurar coverage mínimo del 70%

### Estructura de Carpetas

- [ ] Verificar carpeta `domain/` existe
- [ ] Verificar carpeta `application/` existe
- [ ] Verificar carpeta `infrastructure/` existe
- [ ] Verificar carpeta `presentation/` existe
- [ ] Verificar carpeta `tests/` existe
- [ ] Verificar carpeta `data/` existe

### Archivos **init**.py

- [ ] Crear `domain/__init__.py`
- [ ] Crear `application/__init__.py`
- [ ] Crear `application/servicios/__init__.py`
- [ ] Crear `application/estrategias/__init__.py`
- [ ] Crear `infrastructure/__init__.py`
- [ ] Crear `infrastructure/repositorios/__init__.py`
- [ ] Crear `infrastructure/persistencia/__init__.py`
- [ ] Crear `infrastructure/notificaciones/__init__.py`
- [ ] Crear `presentation/__init__.py`
- [ ] Crear `presentation/menus/__init__.py`
- [ ] Crear `presentation/helpers/__init__.py`
- [ ] Crear `tests/__init__.py`

### Herramientas de Calidad de Código

- [ ] Instalar pylint o flake8: `pip install pylint`
- [ ] Configurar reglas de linting
- [ ] Instalar mypy para type checking: `pip install mypy`
- [ ] Configurar mypy

### Git

- [ ] Verificar que `.gitignore` incluya `venv/`, `__pycache__/`, `*.pyc`
- [ ] Commit inicial de la configuración

---

## 📝 Comandos Rápidos

```bash
# Crear y activar entorno virtual
python -m venv venv
source venv/bin/activate  # Linux/Mac

# Instalar todas las dependencias
pip install -r requirements.txt

# Ejecutar tests
pytest

# Ejecutar tests con coverage
pytest --cov=. --cov-report=html

# Verificar linting
pylint domain/ application/ infrastructure/ presentation/

# Type checking
mypy domain/ application/
```

---

## 📂 Archivos a Crear

- [ ] `requirements.txt`
- [ ] `pytest.ini` o `pyproject.toml`
- [ ] `.pylintrc` (opcional)
- [ ] `mypy.ini` (opcional)

---

## ✅ Criterio de Completitud

La configuración está completa cuando:

- ✅ El entorno virtual está activo
- ✅ Todas las dependencias están instaladas
- ✅ `pytest --version` funciona correctamente
- ✅ Todos los archivos `__init__.py` están creados
- ✅ Se puede ejecutar `pytest` sin errores (aunque no haya tests aún)

---

## 📝 Notas

_Registra aquí cualquier problema encontrado durante la configuración_

---

## 🔗 Referencias

- [Python venv Documentation](https://docs.python.org/3/library/venv.html)
- [Pytest Documentation](https://docs.pytest.org/)
- [Mypy Documentation](https://mypy.readthedocs.io/)
