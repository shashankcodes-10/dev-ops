
# SINGLE STAGE DOCKER IMAGE  //////////////////////////////////////////////////////////////////////////////////////////

# FROM eclipse-temurin:17-jdk-alpine

# WORKDIR /app

# COPY ./src/Main.java .
# COPY quotes.txt .

# RUN javac Main.java

# EXPOSE 8000

# CMD ["java","Main.java"]

#------------------------------------------------------------------------------------------------------------------------



# MULTI STAGE DOCKER IMAGE //////////////////////////////////////////////////////////////////////////////////////////////

# FROM eclipse-temurin:17-jdk-alpine AS builder

# WORKDIR /app

# COPY src/Main.java .
# COPY quotes.txt .

# RUN javac Main.java

# FROM eclipse-temurin:17-jre-alpine

# WORKDIR /app

# COPY --from=builder /app/Main.class .
# COPY --from=builder /app/quotes.txt .

# EXPOSE 8000

# CMD ["java","Main"]

#----------------------------------------------------------------------------------------------------------------------------




# MULTI STAGE WITH DISTROLESS IMAGE DOCKER FILE  ////////////////////////////////////////////////////////////////////////////

FROM eclipse-temurin:17-jdk-alpine AS builder

WORKDIR /app

COPY src/Main.java .
COPY quotes.txt .

RUN javac Main.java

FROM gcr.io/distroless/java17-debian12

WORKDIR /app

COPY --from=builder /app/Main.class .
COPY --from=builder /app/quotes.txt .

EXPOSE 8000

CMD ["java","Main"]


















