vinos <- read.csv2("winequality-red.csv",dec=".")

# TP1 - Inferencia Estadística y Reconocimiento de Patrones
# Parte de regresión en R

# Cargar datos
wine <- read.csv2('winequality-red.csv', dec = ".")

# Estadísticas descriptivas
describe <- summary(wine)
print(describe)

# Matriz de correlaciónn
library(corrplot)
corrplot(cor(wine), method = 'color', tl.cex = 0.7)

# Separar variables
X <- wine[, !(names(wine) %in% c('quality'))]
y <- wine$quality

# Train/test split
set.seed(42)
train_idx <- sample(seq_len(nrow(wine)), size = 0.8 * nrow(wine))
train <- wine[train_idx, ]
test <- wine[-train_idx, ]

# --- Regresión lineal múltiple ---
lm_fit <- lm(quality ~ ., data = train)
lm_pred <- predict(lm_fit, newdata = test)
cat('Regresión lineal múltiple:\n')
cat('RMSE:', sqrt(mean((test$quality - lm_pred)^2)), '\n')
cat('R2:', summary(lm_fit)$r.squared, '\n')
cat('Coeficientes:\n')
print(coef(lm_fit))

# --- Ridge ---
library(glmnet)
X_train <- as.matrix(train[, !(names(train) %in% c('quality'))])
y_train <- train$quality
X_test <- as.matrix(test[, !(names(test) %in% c('quality'))])
y_test <- test$quality

cv_ridge <- cv.glmnet(X_train, y_train, alpha = 0)
best_lambda_ridge <- cv_ridge$lambda.min
ridge_pred <- predict(cv_ridge, s = best_lambda_ridge, newx = X_test)
cat('\nRidge:\n')
cat('Mejor lambda:', best_lambda_ridge, '\n')
cat('RMSE:', sqrt(mean((y_test - ridge_pred)^2)), '\n')

# --- LASSO ---
cv_lasso <- cv.glmnet(X_train, y_train, alpha = 1)
best_lambda_lasso <- cv_lasso$lambda.min
lasso_pred <- predict(cv_lasso, s = best_lambda_lasso, newx = X_test)
cat('\nLASSO:\n')
cat('Mejor lambda:', best_lambda_lasso, '\n')
cat('RMSE:', sqrt(mean((y_test - lasso_pred)^2)), '\n')

# Gráficos de predicción vs real
par(mfrow = c(1,3))
plot(y_test, lm_pred, main = 'Lineal múltiple', xlab = 'Real', ylab = 'Predicho')
plot(y_test, ridge_pred, main = 'Ridge', xlab = 'Real', ylab = 'Predicho')
plot(y_test, lasso_pred, main = 'LASSO', xlab = 'Real', ylab = 'Predicho')
par(mfrow = c(1,1))


