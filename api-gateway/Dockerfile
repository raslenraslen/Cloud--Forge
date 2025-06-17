# Étape 1 : Build avec Maven
FROM maven:3.9.6-eclipse-temurin-17 AS build

WORKDIR /app

# Copie les fichiers nécessaires pour construire le projet
COPY pom.xml .
COPY src ./src
# Compile le projet sans exécuter les tests
RUN mvn clean package -DskipTests

# Étape 2 : Exécution avec une image JRE plus légère
FROM eclipse-temurin:17-jre AS production

WORKDIR /app

# Copie le fichier JAR compilé depuis l'étape précédente
COPY --from=build /app/target/*.jar /app/app.jar

# Expose le port sur lequel ton app écoute (changer si nécessaire)
EXPOSE 8080

# Commande pour lancer l'application
CMD ["java", "-jar", "app.jar"]
