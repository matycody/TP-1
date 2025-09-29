import matplotlib.pyplot as plt
import numpy as np

# Datos de ejemplo extraídos del notebook tp_clasificacion.ipynb
modelos = [
    "Regresión Logística",
    "KNN",
    "LDA",
    "QDA",
    "ADA Boost",
    "Random Forest",
    "Bayes Hibrido",
    "SVM"
]

accuracy_scores = [0.85, 0.89, 0.88, 0.84, 0.89, 0.87, 0.87, 0.87]
recall_scores = [0.84, 0.90, 0.88, 0.75, 0.93, 0.90, 0.92, 0.90]
precision_scores = [0.87, 0.88, 0.88, 0.91, 0.86, 0.86, 0.93, 0.86]
f1_scores = [0.86, 0.89, 0.88, 0.83, 0.89, 0.88, 0.93, 0.86]

x = np.arange(len(modelos))
width = 0.2

fig, ax = plt.subplots(figsize=(12, 8))

rects1 = ax.bar(x - 1.5*width, accuracy_scores, width, label='Accuracy')
rects2 = ax.bar(x - 0.5*width, recall_scores, width, label='Recall')
rects3 = ax.bar(x + 0.5*width, precision_scores, width, label='Precision')
rects4 = ax.bar(x + 1.5*width, f1_scores, width, label='F1 Score')

ax.set_xlabel('Model')
ax.set_ylabel('Score')
ax.set_title('Comparación de Modelos de Clasificación')
ax.set_xticks(x)
ax.set_xticklabels(modelos, rotation=45, ha='right')
ax.set_ylim(0, 1)
ax.legend()

ax.grid(axis='y', linestyle='--', alpha=0.7)

fig.tight_layout()
plt.show()
