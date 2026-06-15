# Flask App — AWS ECS Deployment

A minimal Flask web application built for learning containerization and deployment concepts.

This project demonstrates different Docker image optimization techniques, including:

* Single-Stage Docker Build
* Multi-Stage Docker Build
* Multi-Stage Build with Distroless Runtime

Originally created as part of the DevOps learning journey from TrainWithShubham's DevOps Zero To Hero course.

![Python](https://img.shields.io/badge/Python-3.14-blue)
![Flask](https://img.shields.io/badge/Flask-3.1.1-green)
![Docker](https://img.shields.io/badge/Docker-Ready-2496ED)
![AWS ECS](https://img.shields.io/badge/AWS-ECS-FF9900)

---

## Features

* Responsive Flask web application
* Health check endpoint (`/health`)
* Dockerized application
* Demonstrates Docker image optimization techniques
* Ready for deployment to AWS ECS

---

## Tech Stack

| Component         | Technology              |
| ----------------- | ----------------------- |
| Framework         | Flask 3.1.1             |
| Runtime           | Python 3.14             |
| Containerization  | Docker                  |
| Container Images  | Python Slim, Distroless |
| Deployment Target | AWS ECS                 |

---

## Project Structure

```text
flask-app-ecs/
├── app.py
├── run.py
├── requirements.txt
├── templates/
│   └── index.html
├── Dockerfile
└── README.md
```

---

## Run Locally

Install dependencies:

```bash
pip install -r requirements.txt
```

Start the application:

```bash
python run.py
```

Access:

```text
http://localhost:80
```

---

# Docker Implementations

This repository contains three Docker build approaches for learning and comparison.

---

## 1. Single-Stage Build

Uses a single image for both dependency installation and application runtime.

### Workflow

```text
Python Slim
     ↓
Install Dependencies
     ↓
Copy Source Code
     ↓
Run Application
```

### Benefits

* Easy to understand
* Simple Dockerfile
* Good for beginners

### Limitations

* Larger image size
* Contains build tools and package manager in runtime image

---

## 2. Multi-Stage Build

Uses separate stages for dependency preparation and application runtime.

### Builder Stage

* Uses `python:3.14-slim`
* Installs dependencies into a custom directory

### Runtime Stage

* Uses a fresh `python:3.14-slim`
* Copies only application files and dependencies

### Benefits

* Better layer organization
* Cleaner runtime image
* Faster rebuilds when application code changes

### Additional Concepts Demonstrated

* `--no-cache-dir`
* Custom dependency location using:

```bash
pip install --target=/app/deps
```

* `PYTHONPATH`

---

## 3. Multi-Stage Build with Distroless Runtime

Uses Distroless Python as the final runtime image.

### Builder Stage

```text
python:3.14-slim
```

Responsibilities:

* Install dependencies
* Prepare application files

### Runtime Stage

```text
gcr.io/distroless/python3-debian12
```

Responsibilities:

* Run the Flask application

### Benefits

* Reduced attack surface
* No shell
* No package manager
* No unnecessary operating system utilities
* Production-oriented runtime image

### Important Note

Distroless images are designed primarily for security and minimal runtime environments. They are not always smaller than Alpine-based or Slim-based images.

---

## Build and Run

### Single-Stage Build

```bash
docker build -t flask-app-single .
docker run -p 80:80 flask-app-single
```

---

### Multi-Stage Build

```bash
docker build -t flask-app-multistage .
docker run -p 80:80 flask-app-multistage
```

---

### Distroless Build

```bash
docker build -t flask-app-distroless .
docker run -p 80:80 flask-app-distroless
```

---

## Endpoints

| Route     | Method | Description              |
| --------- | ------ | ------------------------ |
| `/`       | GET    | Application Landing Page |
| `/health` | GET    | Health Check Endpoint    |

---

## AWS ECS Deployment

High-level deployment workflow:

### 1. Push Image to Amazon ECR

```bash
aws ecr get-login-password --region <region> | docker login --username AWS --password-stdin <account-id>.dkr.ecr.<region>.amazonaws.com

docker tag flask-app:latest <account-id>.dkr.ecr.<region>.amazonaws.com/flask-app:latest

docker push <account-id>.dkr.ecr.<region>.amazonaws.com/flask-app:latest
```

### 2. Create ECS Task Definition

Configure:

* Container Image
* CPU
* Memory
* Port 80

### 3. Create ECS Service

Configure:

* Desired Count
* Networking
* Load Balancer

### 4. Configure Application Load Balancer

Health Check Path:

```text
/health
```

---

## Docker Concepts Practiced

This project demonstrates:

* Docker Images
* Docker Containers
* Dockerfile
* Multi-Stage Builds
* Distroless Images
* Python Dependency Management
* Layer Caching
* `PYTHONPATH`
* Runtime Optimization
* Image Hardening

---

## Credits

Original Flask Application:

TrainWithShubham

Repository:
https://github.com/TrainWithShubham

Dockerization practice, image optimization, Multi-Stage Builds, and Distroless implementation explored as part of a DevOps learning journey.

---

## License

This project is licensed under the MIT License.
