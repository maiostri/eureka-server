# Quuero um container que já tenha Java 11.
FROM openjdk:18

# Copia esse arquivo da minha máquina para dentro do container.
# O parametro da esquerda é o arquivo meu, local, e o parâmetro da
# direita é o arquivo dentro do container.
COPY ./build/libs/eureka-server-0.0.1-SNAPSHOT.jar eureka-server-0.0.1-SNAPSHOT.jar

# Executamos o jar da nossa app.
CMD ["java","-jar","eureka-server-0.0.1-SNAPSHOT.jar"]