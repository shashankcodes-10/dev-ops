# Java Motivational Quotes App

A simple Java-based HTTP server that serves random motivational quotes through a REST API. Quotes are stored in an external `quotes.txt` file, making them easy to update without modifying the source code.

## Features

* Serves random motivational quotes in JSON format.
* Uses an external `quotes.txt` file for configurable quotes.
* Lightweight HTTP server using `com.sun.net.httpserver.HttpServer`.
* Demonstrates multiple Docker image optimization techniques:

  * Single-Stage Build
  * Multi-Stage Build
  * Multi-Stage Build with Distroless Runtime
* Dockerized for easy deployment.

---

## Project Structure

```text
java-quotes-app/
│
├── src/
│   └── Main.java
│
├── quotes.txt
├── Dockerfile
├── README.md
│
└── .gitignore
```

---

## Prerequisites

### Local Development

* Java 17 or higher

### Containerized Deployment

* Docker

---

## Running Locally

### Clone the Repository

```bash
git clone https://github.com/LondheShubham153/java-quotes-app.git

cd java-quotes-app
```

### Compile the Application

```bash
javac src/Main.java -d out
```

### Run the Application

```bash
java -cp out Main
```

### Test the API

The application starts on:

```text
http://localhost:8000
```

Test using curl:

```bash
curl http://localhost:8000
```

---

## Running with Docker

### Build the Image

```bash
docker build -t java-quotes-app .
```

### Run the Container

```bash
docker run -p 8000:8000 java-quotes-app
```

### Access the API

```text
http://localhost:8000
```

---

# Docker Implementations

This project demonstrates three different Docker image-building approaches.

## 1. Single-Stage Build

In a Single-Stage Build, the same image is used for:

* Compiling Java source code
* Running the application

### Advantages

* Easy to understand
* Simple Dockerfile

### Disadvantages

* Larger image size
* Contains compiler and build tools in production image

---

## 2. Multi-Stage Build

In a Multi-Stage Build:

### Builder Stage

* Uses JDK
* Compiles Java source code

### Runtime Stage

* Uses JRE only
* Copies only required runtime artifacts

### Advantages

* Smaller image size
* Cleaner runtime image
* Better security

---

## 3. Multi-Stage Build with Distroless Runtime

In this approach:

### Builder Stage

* Uses Eclipse Temurin JDK
* Compiles Java source code

### Runtime Stage

* Uses Distroless Java Runtime
* Contains only Java runtime dependencies
* Does not include:

  * Shell (sh/bash)
  * Package managers
  * Debugging utilities

### Advantages

* Reduced attack surface
* More secure production image
* Fewer unnecessary packages

### Note

Distroless images are designed primarily for security and minimal runtime environments. They are not always smaller than Alpine-based runtime images.

---

## Customizing Quotes

Quotes are stored in:

```text
quotes.txt
```

Add one quote per line:

```text
Believe in yourself.
Stay hungry, stay foolish.
Success is the sum of small efforts repeated daily.
```

Restart the application after updating the file.

---

## Docker Concepts Demonstrated

This project covers:

* Docker Images
* Docker Containers
* Dockerfile
* Multi-Stage Builds
* Distroless Images
* JDK vs JRE
* Build Optimization
* Runtime Optimization

---

## Author



## Credits

This project is based on the original Java Quotes App created by TrainWithShubham.
https://github.com/LondheShubham153/java-quotes-app

I used the application for learning Docker concepts and added:

- Single-Stage Docker Build
- Multi-Stage Docker Build
- Distroless Docker Build

---

## License

This project is licensed under the MIT License.
