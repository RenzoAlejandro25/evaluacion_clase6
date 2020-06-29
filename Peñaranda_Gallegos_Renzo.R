rm(list = ls())
getwd("C:/Users/Usuario/Desktop/Clases_de_R/Prácticas/Evaluacion_clase_6")

#### PREGUNTA 01 ####

library(datasets)
data("iris")

sum(is.na(iris)) #No se tiene que eliminar ninguna observación. 
colnames(iris) 
table(iris$Species) #Species tiene 3 tipos


#Se crean nuevos dataframes
library(dplyr)
iris_setosa <- filter(iris, iris$Species == "setosa") 
iris_versicolor <- filter(iris, iris$Species== "versicolor")
iris_virginica <- filter(iris, iris$Species == "virginica")

#### Histogramas para Setosa ####

hist(iris_setosa$Sepal.Length, col="#3385ff", main = "Histograma del Sépalo por Especie Setosa",
     ylab = "Frecuencia", xlab = "Largo del Sépalo [cm]")

hist(iris_setosa$Sepal.Width, col="#a64dff", main = "Histograma del Sépalo por Especie Setosa",
     ylab = "Frecuencia", xlab = "Ancho del Sépalo [cm]")

hist(iris_setosa$Petal.Length, col="#ff4d4d", main = "Histograma del Pétalo por Especie Setosa",
     ylab = "Frecuencia", xlab = "Largo del Pétalo [cm]")

hist(iris_setosa$Petal.Width, col="#4d4dff", main = "Histograma del Pétalo por Especie Setosa",
     ylab = "Frecuencia", xlab = "Largo del Pétalo [cm]")

#### Histograma para Versicolor ####

hist(iris_versicolor$Sepal.Length , col="#3385ff", main = "Histograma del Sépalo por Especie Versicolor",
     ylab = "Frecuencia", xlab = "Largo del Sépalo [cm]")

hist(iris_versicolor$Sepal.Width, col="#a64dff", main = "Histograma del Sépalo por Especie Versicolor",
     ylab = "Frecuencia", xlab = "Ancho del Sépalo [cm]")

hist(iris_versicolor$Petal.Length, col="#ff4d4d", main = "Histograma del Pétalo por Especie Versicolor",
     ylab = "Frecuencia", xlab = "Largo del Pétalo [cm]")

hist(iris_versicolor$Petal.Width, col="#4d4dff", main = "Histograma del Pétalo por Especie Versicolor",
     ylab = "Frecuencia", xlab = "Largo del Pétalo [cm]")

#### Histograma para Virginica #### 

hist(iris_virginica$Sepal.Length , col="#3385ff", main = "Histograma del Sépalo por Especie Virginica",
     ylab = "Frecuencia", xlab = "Largo del Sépalo [cm]")

hist(iris_virginica$Sepal.Width, col="#a64dff", main = "Histograma del Sépalo por Especie Virginica",
     ylab = "Frecuencia", xlab = "Ancho del Sépalo [cm]")

hist(iris_virginica$Petal.Length, col="#ff4d4d", main = "Histograma del Pétalo por Especie Virginica",
     ylab = "Frecuencia", xlab = "Largo del Pétalo [cm]")

hist(iris_virginica$Petal.Width, col="#4d4dff", main = "Histograma del Pétalo por Especie Virginica",
     ylab = "Frecuencia", xlab = "Largo del Pétalo [cm]")

#### Boxplot para Setosa ####

boxplot(x=iris_setosa$Sepal.Length, col="#3385ff", main="Boxplot del Sépalo por Especie Setosa",
        xlab="Largo del Sépalo")

boxplot(x=iris_setosa$Sepal.Width, col="#a64dff", main="Boxplot del Sépalo por Especie Setosa",
        xlab="Ancho del Sépalo")

boxplot(x=iris_setosa$Petal.Length, col="#ff4d4d", main="Boxplot del Pétalo por Especie Setosa",
        xlab="Largo del Pétalo")

boxplot(x=iris_setosa$Petal.Width, col="#4d4dff", main="Boxplot del Pétalo por Especie Setosa",
        xlab="Ancho del Pétalo")

#### Boxplot para Versicolor ####

boxplot(x=iris_versicolor$Sepal.Length, col="#3385ff", main="Boxplot del Sépalo por Especie Versicolor",
        xlab="Largo del Sépalo")

boxplot(x=iris_versicolor$Sepal.Width, col="#a64dff", main="Boxplot del Sépalo por Especie Versicolor",
        xlab="Ancho del Sépalo")

boxplot(x=iris_versicolor$Petal.Length, col="#ff4d4d", main="Boxplot del Pétalo por Especie Versicolor",
        xlab="Largo del Pétalo")

boxplot(x=iris_versicolor$Petal.Width, col="#4d4dff", main="Boxplot del Pétalo por Especie Versicolor",
        xlab="Ancho del Pétalo")

#### Boxplot para Virginica #### 

boxplot(x=iris_virginica$Sepal.Length, col="#3385ff", main="Boxplot del Sépalo por Especie Virginica",
        xlab="Largo del Sépalo")

boxplot(x=iris_virginica$Sepal.Width , col="#a64dff", main="Boxplot del Sépalo por Especie Virginica",
        xlab="Ancho del Sépalo")

boxplot(x=iris_virginica$Petal.Length , col="#ff4d4d", main="Boxplot del Pétalo por Especie Virginica",
        xlab="Largo del Pétalo")

boxplot(x=iris_virginica$Petal.Width, col="#4d4dff", main="Boxplot del Pétalo por Especie Virginica",
        xlab="Ancho del Pétalo")

#### Diagrama de Dispersión para Setosa ####

plot(x=iris_setosa$Sepal.Length, y=iris_setosa$Sepal.Width, col="#3385ff",
     main="Diagrama de Dispersión del Sépalo por Especie Setosa", xlab="Largo del Sépalo [cm]",
     ylab="Ancho del Sépalo [cm]")

plot(x=iris_setosa$Petal.Length, y=iris_setosa$Petal.Width, col="#a64dff",
     main="Diagrama de Dispersión del Pétalo por Especie Setosa", xlab="Largo del Pétalo [cm]",
     ylab="Ancho del Pétalo [cm]")

plot(x=iris_setosa$Sepal.Length, y=iris_setosa$Petal.Length, col="#ff4d4d",
     main="Diagrama de Dispersión Pétalo - Sépalo por Especie Setosa", xlab="Largo del Sépalo [cm]",
     ylab="Largo del Pétalo [cm]")

plot(x=iris_setosa$Sepal.Width, y=iris_setosa$Petal.Width, col="#4d4dff",
     main="Diagrama de Dispersión Pétalo - Sépalo por Especie Setosa", xlab="Ancho del Sépalo [cm]",
     ylab="Ancho del Pétalo [cm]")

#### Diagrama de Dispersión para Versicolor ####

plot(x=iris_versicolor$Sepal.Length, y=iris_versicolor$Sepal.Width, col="#3385ff",
     main="Diagrama de Dispersión del Sépalo por Especie Versicolor", xlab="Largo del Sépalo [cm]",
     ylab="Ancho del Sépalo [cm]")

plot(x=iris_versicolor$Petal.Length, y=iris_versicolor$Petal.Width, col="#a64dff",
     main="Diagrama de Dispersión del Pétalo por Especie Versicolor", xlab="Largo del Pétalo [cm]",
     ylab="Ancho del Pétalo [cm]")

plot(x=iris_versicolor$Sepal.Length, y=iris_versicolor$Petal.Length, col="#ff4d4d",
     main="Diagrama de Dispersión Pétalo - Sépalo por Especie Versicolor", xlab="Largo del Sépalo [cm]",
     ylab="Largo del Pétalo [cm]")

plot(x=iris_versicolor$Sepal.Width, y=iris_versicolor$Petal.Width, col="#4d4dff",
     main="Diagrama de Dispersión Pétalo - Sépalo por Especie Versicolor", xlab="Ancho del Sépalo [cm]",
     ylab="Ancho del Pétalo [cm]")

#### Diagrama de Dispersión para Virginica ####

plot(x=iris_virginica$Sepal.Length, y=iris_virginica$Sepal.Width, col="#3385ff",
     main="Diagrama de Dispersión del Sépalo por Especie Virginica", xlab="Largo del Sépalo [cm]",
     ylab="Ancho del Sépalo [cm]")

plot(x=iris_virginica$Petal.Length, y=iris_virginica$Petal.Width, col="#a64dff",
     main="Diagrama de Dispersión del Pétalo por Especie Virginica", xlab="Largo del Pétalo [cm]",
     ylab="Ancho del Pétalo [cm]")

plot(x=iris_virginica$Sepal.Length, y=iris_virginica$Petal.Length, col="#ff4d4d",
     main="Diagrama de Dispersión Pétalo - Sépalo por Especie Virginica", xlab="Largo del Sépalo [cm]",
     ylab="Largo del Pétalo [cm]")

plot(x=iris_virginica$Sepal.Width, y=iris_virginica$Petal.Width, col="#4d4dff",
     main="Diagrama de Dispersión Pétalo - Sépalo por Especie Virginica", xlab="Ancho del Sépalo [cm]",
     ylab="Ancho del Pétalo [cm]")

#### Histograma para Iris ####

library(ggplot2)
library(hrbrthemes)

iris %>% 
  ggplot(aes(x=Sepal.Length, color=Species, fill=Species))+
  geom_histogram(position = "identity", alpha=0.5)+
  scale_x_continuous(breaks=seq(0,9,0.25))+
  scale_y_continuous(breaks=seq(0,11,1))+
  theme_ipsum()+
  ggtitle("Histograma del Largo del Sépalo por Especie")+
  ylab("Frecuencia")+
  xlab("Largo del Sépalo [cm]")+
  theme(plot.title = element_text(size = 20, hjust = 0.5))+
  theme(axis.title.x = element_text(size = 14.5,hjust = 0.5))+
  theme(axis.title.y = element_text(size=14.5, hjust = 0.5))

iris %>% 
  ggplot(aes(x=Sepal.Width, color=Species, fill=Species))+
  geom_histogram(position = "identity", alpha=0.5)+
  scale_x_continuous(breaks=seq(0,5,0.25))+
  scale_y_continuous(breaks=seq(0,12,1))+
  theme_ipsum()+
  ggtitle("Histograma del Ancho del Sépalo por Especie")+
  ylab("Frecuencia")+
  xlab("Ancho del Sépalo [cm]")+
  theme(plot.title = element_text(size = 20, hjust = 0.5))+
  theme(axis.title.x = element_text(size = 14.5,hjust = 0.5))+
  theme(axis.title.y = element_text(size=14.5, hjust = 0.5))

iris %>% 
  ggplot(aes(x=Petal.Length, color=Species, fill=Species))+
  geom_histogram(position = "identity", alpha=0.5)+
  scale_x_continuous(breaks=seq(0,8,0.5))+
  scale_y_continuous(breaks=seq(0,30,2))+
  theme_ipsum()+
  ggtitle("Histograma del Largo del Pétalo por Especie")+
  ylab("Frecuencia")+
  xlab("Largo del Pétalo [cm]")+
  theme(plot.title = element_text(size = 20, hjust = 0.5))+
  theme(axis.title.x = element_text(size = 14.5,hjust = 0.5))+
  theme(axis.title.y = element_text(size=14.5, hjust = 0.5))

iris %>% 
  ggplot(aes(x=Petal.Width, color=Species, fill=Species))+
  geom_histogram(position = "identity", alpha=0.5)+
  scale_x_continuous(breaks=seq(0,3,0.25))+
  scale_y_continuous(breaks=seq(0,30,2))+
  theme_ipsum()+
  ggtitle("Histograma del Ancho del Pétalo por Especie")+
  ylab("Frecuencia")+
  xlab("Ancho del Pétalo [cm]")+
  theme(plot.title = element_text(size = 20, hjust = 0.5))+
  theme(axis.title.x = element_text(size = 14.5,hjust = 0.5))+
  theme(axis.title.y = element_text(size=14.5, hjust = 0.5))

#### Boxplot para Iris ####

iris %>%
  ggplot(aes(x=Species, y=Sepal.Length, color=Species, fill=Species))+
  geom_boxplot(alpha=0.5)+
  scale_y_continuous(breaks=seq(0,8,0.5))+
  theme_ipsum()+
  ggtitle("Boxplot del Largo del Sépalo por Especie")+
  ylab("Largo del Sépalo [cm]")+
  xlab("Especies")+
  theme(plot.title = element_text(size = 20, hjust = 0.5))+
  theme(axis.title.x = element_text(size = 14.5,hjust = 0.5))+
  theme(axis.title.y = element_text(size=14.5, hjust = 0.5))

iris %>%
  ggplot(aes(x=Species, y=Sepal.Width, color=Species, fill=Species))+
  geom_boxplot(alpha=0.5)+
  scale_y_continuous(breaks=seq(0,5,0.2))+
  theme_ipsum()+
  ggtitle("Boxplot del Ancho del Sépalo por Especie")+
  ylab("Ancho del Sépalo [cm]")+
  xlab("Especies")+
  theme(plot.title = element_text(size = 20, hjust = 0.5))+
  theme(axis.title.x = element_text(size = 14.5,hjust = 0.5))+
  theme(axis.title.y = element_text(size=14.5, hjust = 0.5))

iris %>%
  ggplot(aes(x=Species, y=Petal.Length, color=Species, fill=Species))+
  geom_boxplot(alpha=0.5)+
  scale_y_continuous(breaks=seq(0,7,0.5))+
  theme_ipsum()+
  ggtitle("Boxplot del Largo del Pétalo por Especie")+
  ylab("Largo del Pétalo [cm]")+
  xlab("Especies")+
  theme(plot.title = element_text(size = 20, hjust = 0.5))+
  theme(axis.title.x = element_text(size = 14.5,hjust = 0.5))+
  theme(axis.title.y = element_text(size=14.5, hjust = 0.5))

iris %>%
  ggplot(aes(x=Species, y=Petal.Width, color=Species, fill=Species))+
  geom_boxplot(alpha=0.5)+
  scale_y_continuous(breaks=seq(0,3,0.2))+
  theme_ipsum()+
  ggtitle("Boxplot del Ancho del Pétalo por Especie")+
  ylab("Ancho del Pétalo [cm]")+
  xlab("Especies")+
  theme(plot.title = element_text(size = 20, hjust = 0.5))+
  theme(axis.title.x = element_text(size = 14.5,hjust = 0.5))+
  theme(axis.title.y = element_text(size=14.5, hjust = 0.5))

#### Diagrama de Dispersión para Iris ####

iris %>%
  ggplot(aes(x=Sepal.Length, y=Sepal.Width, fill=Species))+
  geom_point(aes(col=Species), size=3)+
  scale_x_continuous(breaks=seq(0,9,0.2))+
  scale_y_continuous(breaks=seq(0,5,0.2))+
  theme_ipsum()+
  ggtitle("Diagrama de Dispersión del Sépalo por Especie")+
  ylab("Ancho del Sépalo [cm]")+
  xlab("Largo del Sépalo [cm]")+
  theme(plot.title = element_text(size = 20, hjust = 0.5))+
  theme(axis.title.x = element_text(size = 14.5,hjust = 0.5))+
  theme(axis.title.y = element_text(size=14.5, hjust = 0.5))

iris %>%
  ggplot(aes(x=Petal.Length, y=Petal.Width, fill=Species))+
  geom_point(aes(col=Species), size=3)+
  scale_x_continuous(breaks=seq(0,8,0.5))+
  scale_y_continuous(breaks=seq(0,3,0.2))+
  theme_ipsum()+
  ggtitle("Diagrama de Dispersión del Pétalo por Especie")+
  ylab("Ancho del Pétalo [cm]")+
  xlab("Largo del Pétalo [cm]")+
  theme(plot.title = element_text(size = 20, hjust = 0.5))+
  theme(axis.title.x = element_text(size = 14.5,hjust = 0.5))+
  theme(axis.title.y = element_text(size=14.5, hjust = 0.5))

iris %>%
  ggplot(aes(x=Sepal.Length, y=Petal.Length, fill=Species))+
  geom_point(aes(col=Species), size=3)+
  scale_x_continuous(breaks=seq(0,9,0.5))+
  scale_y_continuous(breaks=seq(0,8,0.5))+
  theme_ipsum()+
  ggtitle("Diagrama de Dispersión Pétalo - Sépalo por Especie")+
  ylab("Largo del Pétalo [cm]")+
  xlab("Largo del Sépalo [cm]")+
  theme(plot.title = element_text(size = 20, hjust = 0.5))+
  theme(axis.title.x = element_text(size = 14.5,hjust = 0.5))+
  theme(axis.title.y = element_text(size=14.5, hjust = 0.5))

iris %>%
  ggplot(aes(x=Sepal.Width, y=Petal.Width, fill=Species))+
  geom_point(aes(col=Species), size=3)+
  scale_x_continuous(breaks=seq(0,5,0.2))+
  scale_y_continuous(breaks=seq(0,3,0.2))+
  theme_ipsum()+
  ggtitle("Diagrama de Dispersión Pétalo - Sépalo por Especie")+
  ylab("Ancho del Pétalo [cm]")+
  xlab("Ancho del Sépalo [cm]")+
  theme(plot.title = element_text(size = 20, hjust = 0.5))+
  theme(axis.title.x = element_text(size = 14.5,hjust = 0.5))+
  theme(axis.title.y = element_text(size=14.5, hjust = 0.5))

#### Pregunta 2 ####

rm(list=ls())
library(datasets)
library(rpart)
library(rpart.plot)

data("iris")
colnames(iris)

arbol_iris <- rpart(Species ~., data=iris)
prp(arbol_iris)

NuevaEspecie <- data.frame(Sepal.Length = 6.5, Sepal.Width = 3.0, Petal.Length = 5.2, 
                           Petal.Width = 2.0)
# Según las carácteristicas de esta NuevaEspecie y teniendo el cuenta el árbol de regresión
# la especie sería Virginic.

#### Pregunta 3 ####

rm(list=ls())
library(mlbench)
library(dplyr)
library(C50)

data("PimaIndiansDiabetes2")
PimaIndiansDiabetes2 <- na.omit(PimaIndiansDiabetes2)

#### Escenario 1 ####
Escenario_1 <- select(PimaIndiansDiabetes2, -pedigree)

# Se definen los datos de entrenamiento y prueba.
set.seed(1.61803)
datos_train_1 <- Escenario_1[sample(1:nrow(Escenario_1), 
                                    size=round(nrow(Escenario_1)*0.7)),]
datos_test_1 <- Escenario_1[-sample(1:nrow(Escenario_1), 
                                  size=round(nrow(Escenario_1)*0.7)),]

# Se crea y visualiza el árbol de clasificación 
arbol_esc_1 <- C5.0(diabetes ~., data = datos_train_1)
plot(arbol_esc_1)

# Se convalida el modelo con los datos de prueba
prediccion <- predict(arbol_esc_1, newdata=datos_test_1)
tabla <- table(prediccion, datos_test_1$diabetes)
sum(diag(tabla))/sum(tabla)*100
# El modelo arbol_esc_1 tiene una tasa de acierto del 81.36% con la muestra de prueba. 

#### Escenario 2 ####

Escenario_2 <- select(PimaIndiansDiabetes2, -glucose)

set.seed(1.61803)
datos_train_2 <- Escenario_2[sample(1:nrow(Escenario_2), 
                                    size=round(nrow(Escenario_2)*0.7)),]
datos_test_2 <- Escenario_2[-sample(1:nrow(Escenario_2), 
                                    size=round(nrow(Escenario_2)*0.7)),]

arbol_esc_2 <- C5.0(diabetes ~., data = datos_train_2)
plot(arbol_esc_2)

prediccion <- predict(arbol_esc_2, newdata=datos_test_2)
tabla <- table(prediccion, datos_test_2$diabetes)
sum(diag(tabla))/sum(tabla)*100
#El modelo arbol_esc_2 tiene una tasa de acierto del 89.83051%.

#### Pregunta 4 ####

rm(list=ls())
library(MASS) 
library(tree)
library(ggplot2)
library(ggpubr)
library(hrbrthemes)

data("Boston")
sum(is.na(Boston))#No tiene NAs

Prueba1 <-c(1 ,3, 9,12, 14,15,  32,  36,  45 , 59 , 66  ,94 , 95 ,130 ,146, 149 ,171, 188, 
            193, 194, 209, 210 ,218 ,227, 237 ,241, 255, 277,304 ,308 ,316 ,320, 334 ,349,
            366 ,367 ,371 ,378, 393 ,401,406 ,422, 423 ,453 ,455 ,485, 496, 505)

Prueba2 <- sample(primes::generate_primes(min=200,max = 506),size = 25)

#### Escenario 1 ####

Escenario1 <- Boston[Prueba1,-14]

set.seed(1)
train_1 <- sample(1:nrow(Escenario1), replace=T ,size = nrow(Boston)*0.7) 
arbol_reg1 <- tree(formula = medv ~ ., data= Boston, subset=train_1, split = "deviance")
summary(arbol_reg1) #Tiene 8 nodos terminales y un Residual mean deviance de 2.132.

set.seed(1)
cv_arbol1 <- cv.tree(arbol_reg1, K=10)
cv_arbol1 #Se obtiene el menor cross-validation test error con 8 nodos terminales, no es 
# necesario podar el árbol. 

#### Escenario 2 ####

Escenario2 <- Boston[Prueba2,-14]

set.seed(1)
train_2 <- sample(1:nrow(Escenario2), replace=T ,size = nrow(Boston)*0.7) 
arbol_reg2 <- tree(formula = medv ~ ., data= Boston, subset=train_2, split = "deviance")
summary(arbol_reg2) #Tiene 8 nodos terminales y un Residual mean deviance de 1.03.

set.seed(1)
cv_arbol2 <- cv.tree(arbol_reg2, K=10)
cv_arbol2 #Menor Cross-validation test error con 8 nodos terminales

#### Comparación Escenario 1 y Escenario 2 ####

prediciones1 <- predict(arbol_reg1, newdata = Boston[-train_1,])
test_mse1 <- mean((prediciones1-Boston[-train_1,"medv"])^2)
paste("Error (mse) del árbol después de la poda:", round(test_mse1,2))
sqrt(32.65)
# El mean squared error es igual a 35.29, las predicciones se alejan 5.71 unidades de sus 
# verdaderos valores.

prediciones2 <- predict(arbol_reg2, newdata = Boston[-train_2,])
test_mse2 <- mean((prediciones2-Boston[-train_2,"medv"])^2)
paste("Error (mse) del árbol después de la poda:", round(test_mse2,2))
sqrt(44.13)
# El mean squared error es igual a 44.13, las predicciones se alejan 6.64 unidades de sus 
# verdaderos valores.

# Bajo este análisis el Escenario 1 es mejor en cuanto a predecir valores se trata. 

resultados1 <- data.frame(n_nodos=cv_arbol1$size, deviance= cv_arbol1$dev, 
                          alpha=cv_arbol1$k)

resultados2 <- data.frame(n_nodos=cv_arbol2$size, deviance=cv_arbol2$dev, 
                          alpha=cv_arbol2$k)

p1 <- ggplot(data=resultados1, aes(x=n_nodos, y=deviance)) + 
  geom_line(colour="#668cff")+
  geom_point(size=3, colour="#4d4dff")+
  theme_bw()+
  scale_x_continuous(breaks=seq(0,8,1))+
  scale_y_continuous(breaks=seq(0,2000,100))+
  ggtitle("Error vs. Tamaño del Árbol [arbol1]")+
  ylab("Error")+
  xlab("Número de Notos Terminales")+
  theme(plot.title = element_text(size = 20, hjust = 0.5))+
  theme(axis.title.x = element_text(size = 14.5,hjust = 0.5))+
  theme(axis.title.y = element_text(size=14.5, hjust = 0.5))

p2 <- ggplot(data=resultados2, aes(x=n_nodos, y=deviance)) + 
  geom_line(colour="#668cff")+
  geom_point(size=3, colour="#4d4dff")+
  theme_bw()+
  scale_x_continuous(breaks=seq(0,8,1))+
  scale_y_continuous(breaks=seq(0,1300,25))+
  ggtitle("Error vs. Tamaño del Árbol [arbol2]")+
  ylab("Error")+
  xlab("Número de Notos Terminales")+
  theme(plot.title = element_text(size = 20, hjust = 0.5))+
  theme(axis.title.x = element_text(size = 14.5,hjust = 0.5))+
  theme(axis.title.y = element_text(size=14.5, hjust = 0.5))

ggarrange(p1, p2)
# En este último gráfico comparativo se observa que, para un número de nodos terminales 
# igual a 8, el arbol1 obtiene un error menor que arbol2