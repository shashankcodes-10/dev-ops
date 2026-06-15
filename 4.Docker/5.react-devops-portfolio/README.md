# React DevOps Portfolio

A simple React-based portfolio application created for learning Docker image creation and optimization techniques.

This project demonstrates:

* Single-Stage Docker Build
* Multi-Stage Docker Build
* Production Deployment with Nginx

---

## Features

* Simple React portfolio page
* Displays DevOps skills and technologies
* Dockerized for easy deployment
* Demonstrates Docker image optimization techniques
* Production-ready React build served through Nginx

---

## Tech Stack

| Component        | Technology |
| ---------------- | ---------- |
| Frontend         | React      |
| Runtime          | Node.js 22 |
| Web Server       | Nginx      |
| Containerization | Docker     |

---

## Project Structure

```text
react-devops-portfolio/
│
├── public/
│   └── index.html
│
├── src/
│   ├── App.js
│   ├── App.css
│   └── index.js
│
├── package.json
├── Dockerfile
└── README.md
```

---

## Run Locally

Install dependencies:

```bash
npm install
```

Start development server:

```bash
npm start
```

Application will be available at:

```text
http://localhost:3000
```

---

# Docker Implementations

This project was used to practice multiple Docker image creation approaches.

---

## 1. Single-Stage Docker Build

A simple Docker image that:

* Uses Node.js as the runtime
* Installs dependencies
* Runs the React development server

### Workflow

```text
Node Image
     ↓
npm install
     ↓
Copy Source Code
     ↓
npm start
```

### Example Commands

Build:

```bash
docker build -t react-portfolio-single .
```

Run:

```bash
docker run -p 3000:3000 react-portfolio-single
```

---

## 2. Multi-Stage Docker Build

Uses separate stages for:

### Builder Stage

* Install dependencies
* Build React application

```bash
npm run build
```

Creates:

```text
build/
```

---

### Runtime Stage

Uses:

```text
nginx:alpine
```

Only the generated build files are copied into the final image.

### Workflow

```text
React Source Code
        ↓
npm install
        ↓
npm run build
        ↓
build/
        ↓
Nginx Runtime
        ↓
Browser
```

### Benefits

* Smaller image size
* No Node.js in final image
* No npm in final image
* Faster deployment
* Production-ready setup

---

## Why Nginx?

React applications are built into static files:

```text
HTML
CSS
JavaScript
```

After:

```bash
npm run build
```

the application no longer requires:

```text
Node.js
npm
react-scripts
```

A lightweight web server such as Nginx is sufficient to serve the generated files.

---

## Docker Concepts Practiced

This project demonstrates:

* Docker Images
* Docker Containers
* Dockerfile
* Layer Caching
* Multi-Stage Builds
* Build-Time vs Runtime Dependencies
* React Production Builds
* Nginx Runtime Containers
* Image Optimization

---

## Useful Commands

Build Image:

```bash
docker build -t react-portfolio .
```

Run Container:

```bash
docker run -p 3000:3000 react-portfolio
```

View Images:

```bash
docker images
```

View Running Containers:

```bash
docker ps
```

Stop Container:

```bash
docker stop <container-id>
```

---

## Learning Outcomes

By completing this project, you will understand:

* When to use `npm install`
* When to use `npm start`
* When to use `npm run build`
* Why React production deployments use Nginx
* How Multi-Stage Docker Builds reduce image size
* Difference between build-time and runtime dependencies

---

## Author

Shashank Pipal


