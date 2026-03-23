# Image (os)

FROM eclipse-temurin:17-jdk-alpine

# Work directory 

WORKDIR /app

# COPY the code

COPY src/Main.java /app/Main.java
COPY quotes.txt quotes.txt

# RUN Compile the code 

RUN javac Main.java

# Expose the port 

EXPOSE 8000

#Run the java code when container starts
CMD ["java","Main"]
