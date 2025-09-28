# Trabajo Práctico 1 - Inferencia Estadística y Reconocimiento de Patrones

## 1. Introducción
En este trabajo se analiza el dataset `winequality-red.csv`, que contiene características fisicoquímicas y sensoriales de vinos tintos de Portugal. El objetivo es predecir la variable `quality` utilizando métodos de regresión y clasificación, y comparar su desempeño.

## 2. Objetivo
Aplicar y comparar técnicas estadísticas y de machine learning para predecir la calidad del vino, evaluando modelos de regresión y clasificación, y seleccionar el método más adecuado.

## 3. Descripción del dataset
Variables:
- fixed.acidity
- volatile.acidity
- citric.acid
- residual.sugar
- chlorides
- free.sulfur.dioxide
- total.sulfur.dioxide
- density
- pH
- sulphates
- alcohol
- quality (respuesta)

## 4. Metodología
Se aplicaron los siguientes métodos:
- **Regresión:** lineal múltiple, Ridge, LASSO
- **Clasificación:** regresión logística multinomial, KNN, Bayes ingenuo, LDA, QDA
Para cada uno se realizó ajuste, selección de parámetros (validación cruzada), evaluación de métricas y comparación de resultados.

## 5. Análisis exploratorio
- Estadísticas descriptivas y matriz de correlación
- Distribución de la variable quality (ver gráfico 1)
- Observaciones sobre la estructura y balance de clases

## 6. Modelado y resultados
### 6.1 Regresión
- Se implementaron los tres modelos, reportando RMSE, R² y coeficientes.
- Ridge fue el mejor modelo para regresión (ver gráfico 2 y 3).

### 6.2 Clasificación
- Se implementaron los cinco modelos, reportando accuracy, matriz de confusión y reporte de clasificación.
- La regresión logística multinomial fue la mejor opción para clasificación (ver gráfico 4 y 5).

## 7. Comparación y justificación
- Se compararon todas las métricas y se seleccionaron los mejores modelos.
- Ridge para regresión y regresión logística multinomial para clasificación, por su robustez, interpretabilidad y desempeño.

## 8. Reflexión final
El ajuste más adecuado para el conjunto de datos es la regresión logística multinomial para clasificación y Ridge para regresión. Se justifica por desempeño, interpretabilidad y generalización.

## 9. Conclusiones
- El análisis exploratorio mostró correlaciones relevantes y desbalance de clases.
- Ridge y regresión logística multinomial fueron los modelos más robustos y efectivos.
- Se recomienda complementar con validación cruzada y técnicas de balanceo.

## 10. Visualizaciones y anexos
- Gráfico 1: Distribución de la variable quality
- Gráfico 2: Importancia de variables según Ridge
- Gráfico 3: Gráfico de residuos para Ridge
- Gráfico 4: Matriz de confusión y métricas de clasificación
- Gráfico 5: Curva ROC y AUC para clasificación binaria

(Insertar los gráficos exportados desde el notebook en las secciones correspondientes)

## 11. Recursos
- scikit-learn, pandas, seaborn, matplotlib
- Documentación oficial y bibliografía citada en el notebook

---

_Este informe es un borrador. Completar con los valores numéricos y gráficos exportados del notebook para la entrega final._
