# Pull aBase Image which gives all required tools and Libraries 
FROM eclipse-temurin:17-jdk-alpine

# Create a folder where the app code will store 
WORKDIR /app

# Copy Source Code from your Host Machine to your container 
COPY src/Main.java Main.java

# compile the application code
RUN javac Main.java

# run the application
CMD ["java", "Main"]
