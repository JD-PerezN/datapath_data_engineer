# Proyecto: Modelo de Clasificación de Problemas en Procesos

Este proyecto tiene como objetivo desarrollar un modelo de clasificación para la variable objetivo "Estado" a partir de datos de procesos.

## Estructura del proyecto

- `main.py`: Script principal para entrenamiento y evaluación del modelo.
- `code/data/datos_procesos.csv`: Archivo de datos utilizado para el entrenamiento.
- `code/notebook/clasificacion_problemas_procesos.ipynb`: Notebook con análisis exploratorio, preprocesamiento y experimentos de clasificación.
- `pyproject.toml`, `uv.lock`: Archivos de gestión de dependencias.

## Ejecución del código

### Instalar dependencias

Asegúrate de tener Python 3.9+ instalado. Instala las dependencias ejecutando:

```powershell
pip install -r requirements.txt
```
O si usas `uv`:
```powershell
uv pip install
```

### Uso del notebook

Abre el archivo `code/notebook/clasificacion_problemas_procesos.ipynb` en Jupyter Notebook o VS Code para explorar el análisis de datos, visualizaciones y pruebas de modelos.

## Consideraciones sobre el desbalance de clases

La variable objetivo "Estado" presenta un desbalance marcado entre clases. Se recomienda:
- Utilizar técnicas de re-muestreo (oversampling/undersampling).
- Ajustar pesos de clase en los modelos.
- Evaluar el desempeño con métricas como F1-score, precisión y recall.

