# Usar una imagen de Java con JDK
FROM eclipse-temurin:17-jdk-alpine

# Definir el directorio de trabajo
WORKDIR /app

# Copiar el JAR (preconstruido) al contenedor
COPY annubisBack.jar app.jar

# Exponer el puerto donde se ejecutará la aplicación
EXPOSE 8080

# Comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "app.jar"]
