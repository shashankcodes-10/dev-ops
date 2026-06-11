
# Random Developer Portfolio

## Overview
A sample portfolio website built with Next.js and React for Docker practice.

## Tech Stack
- Next.js
- React
- Node.js
- Docker

## Requirements
- Node.js 20+
- Docker Desktop or Docker Engine

## Local Run
```bash
npm install
npm run dev
```

## Build Docker Image
```bash
docker build -t portfolio-app .
```

## Run Container
```bash
docker run -d -p 3000:3000 --name portfolio portfolio-app
```

## Learning Goals
- Dockerfile creation
- Image building
- Container management
- Port mapping
- Layer caching
- Next.js deployment
