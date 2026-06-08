# Networking Fundamentals for DevOps Engineers

## 1. Understanding OSI & TCP/IP Models

Networking is a core skill for DevOps engineers because cloud infrastructure, containers, CI/CD pipelines, monitoring tools, and automation all depend on network communication.

---

# OSI Model (Open Systems Interconnection)

The OSI model consists of **7 layers** that describe how data travels from one device to another.

| Layer | Name         | Purpose                                  | Real-World Example                       |
| ----- | ------------ | ---------------------------------------- | ---------------------------------------- |
| 7     | Application  | Provides services directly to users      | HTTP, HTTPS, FTP, DNS                    |
| 6     | Presentation | Data formatting, encryption, compression | SSL/TLS encryption for HTTPS             |
| 5     | Session      | Establishes and manages sessions         | Login session between browser and server |
| 4     | Transport    | Reliable data delivery                   | TCP, UDP                                 |
| 3     | Network      | Routing packets between networks         | IP addresses, Routers                    |
| 2     | Data Link    | Communication within local network       | MAC addresses, Ethernet                  |
| 1     | Physical     | Physical transmission of data            | Fiber cables, Wi-Fi signals              |

## Real-World Example: Opening a Website

When a user visits `https://github.com`:

### Layer 7 – Application

* Browser sends an HTTPS request.
* Protocol: HTTPS

### Layer 6 – Presentation

* Data is encrypted using TLS.

### Layer 5 – Session

* Session established between browser and GitHub server.

### Layer 4 – Transport

* TCP ensures packets arrive reliably.

### Layer 3 – Network

* IP routing sends packets across the internet.

### Layer 2 – Data Link

* Ethernet or Wi-Fi frames move data within local networks.

### Layer 1 – Physical

* Electrical signals, radio waves, or fiber optics carry the data.

---

# TCP/IP Model

The TCP/IP model is the practical networking model used on the Internet.

| Layer          | Purpose                      | Protocol Examples          |
| -------------- | ---------------------------- | -------------------------- |
| Application    | User-facing network services | HTTP, HTTPS, DNS, FTP, SSH |
| Transport      | End-to-end communication     | TCP, UDP                   |
| Internet       | Routing packets              | IP, ICMP                   |
| Network Access | Local network communication  | Ethernet, Wi-Fi            |

## Mapping OSI to TCP/IP

| OSI Model                            | TCP/IP Model   |
| ------------------------------------ | -------------- |
| Application + Presentation + Session | Application    |
| Transport                            | Transport      |
| Network                              | Internet       |
| Data Link + Physical                 | Network Access |

---

# Why DevOps Engineers Need Networking

### Infrastructure as Code (Terraform)

* Creating VPCs
* Configuring subnets
* Route tables
* Security groups

### Cloud Platforms (AWS/Azure/GCP)

* Public and private networks
* Load balancers
* NAT gateways

### Docker

* Container networking
* Bridge networks
* Port mapping

### Kubernetes

* Services
* Ingress controllers
* Pod networking
* Service discovery

### CI/CD Pipelines

* Jenkins communicating with servers
* GitHub Actions deploying applications
* Artifact repositories

### Monitoring

* Prometheus scraping metrics
* Grafana dashboards
* Network troubleshooting

---

# 2. Protocols and Ports for DevOps

Understanding protocols and ports is essential for troubleshooting deployments, configuring servers, and securing infrastructure.

## Common Protocols and Port Numbers

| Protocol       | Port  | Purpose                  | DevOps Use Case          |
| -------------- | ----- | ------------------------ | ------------------------ |
| HTTP           | 80    | Web communication        | Application access       |
| HTTPS          | 443   | Secure web communication | Production websites      |
| SSH            | 22    | Secure remote access     | Server management        |
| FTP            | 21    | File transfer            | Legacy file transfers    |
| SFTP           | 22    | Secure file transfer     | Secure deployments       |
| DNS            | 53    | Domain name resolution   | Service discovery        |
| SMTP           | 25    | Email transfer           | Alert notifications      |
| POP3           | 110   | Email retrieval          | Mail systems             |
| IMAP           | 143   | Email synchronization    | Mail servers             |
| MySQL          | 3306  | Database access          | Application databases    |
| PostgreSQL     | 5432  | Database access          | Production databases     |
| Redis          | 6379  | In-memory cache          | High-speed caching       |
| MongoDB        | 27017 | NoSQL database           | Modern applications      |
| Jenkins        | 8080  | CI/CD server             | Build automation         |
| Kubernetes API | 6443  | Cluster management       | Kubernetes control plane |
| NTP            | 123   | Time synchronization     | Server clock sync        |

---

# How These Protocols Are Used in DevOps

## HTTP/HTTPS

* Accessing web applications
* API communication
* Microservices interaction
* Monitoring dashboards

Example:

* User → Load Balancer → Application Server

---

## SSH (Port 22)

Used for:

* Remote server administration
* Deployments
* Troubleshooting

Example:

```bash
ssh ubuntu@server-ip
```

---

## DNS (Port 53)

Used for:

* Domain resolution
* Service discovery
* Load balancing

Example:

```bash
google.com → 142.250.x.x
```

---

## MySQL/PostgreSQL

Used for:

* Application data storage
* Backend services

Example:

```bash
mysql -u root -p
```

---

## Kubernetes API (6443)

Used for:

* Managing Kubernetes clusters
* Deploying workloads

Example:

```bash
kubectl get pods
```

The kubectl command communicates with the Kubernetes API Server over port 6443.

---

# Conclusion

Networking forms the foundation of modern DevOps practices. Understanding OSI and TCP/IP models helps engineers troubleshoot communication issues, while knowledge of protocols and ports enables secure deployments, cloud infrastructure management, container orchestration, and CI/CD automation.

A strong networking foundation makes it easier to work with AWS, Azure, Docker, Kubernetes, Terraform, Jenkins, and other DevOps tools.

