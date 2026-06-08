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


## Switches

A switch is a networking device that connects multiple devices within the same Local Area Network (LAN) and forwards data based on MAC addresses.

### How a Switch Works

* Each device has a unique MAC address.
* The switch learns which MAC address belongs to which port.
* Data is sent only to the intended device instead of broadcasting to everyone.

### Real-World Example

In an office network:

* Laptop A
* Laptop B
* Printer
* Server

All devices connect to a switch.

When Laptop A sends data to the Server, the switch forwards the traffic only to the server's port.

### Why Switches Matter in DevOps

* Connect servers within a data center.
* Enable communication between virtualization hosts.
* Support containerized and cloud-native workloads.
* Reduce unnecessary network traffic.

---

## Routers

A router connects different networks and forwards packets based on IP addresses.

### Example

A home network may use:

* Private Network: 192.168.1.0/24
* Internet: Public IP Network

The router enables devices in the private network to access the internet.

### DevOps Relevance

Cloud routers are used for:

* AWS VPC routing
* Azure Virtual Networks
* Hybrid cloud connectivity
* Internet Gateways
* NAT Gateways

---

## What is a Subnet?

A subnet (subnetwork) is a logical division of a larger network into smaller networks.

Subnetting helps:

* Improve security
* Reduce broadcast traffic
* Organize infrastructure
* Separate environments

### Example

Network:

```text
192.168.1.0/24
```

Can be divided into:

```text
192.168.1.0/26
192.168.1.64/26
192.168.1.128/26
192.168.1.192/26
```

Each subnet can be used for different resources.

For example:

| Subnet             | Purpose           |
| ------------------ | ----------------- |
| Public Subnet      | Web Servers       |
| Private Subnet     | Databases         |
| Management Subnet  | Monitoring Tools  |
| Development Subnet | Testing Resources |

---

## Public vs Private Subnets

### Public Subnet

Resources have internet access.

Examples:

* Web Servers
* Load Balancers
* Reverse Proxies

AWS Example:

```text
10.0.1.0/24
```

### Private Subnet

Resources are not directly accessible from the internet.

Examples:

* Databases
* Internal APIs
* Backend Services

AWS Example:

```text
10.0.2.0/24
```

### DevOps Best Practice

Place:

* Application Servers → Public Subnet
* Databases → Private Subnet

This improves security significantly.

---

## CIDR Notation

CIDR (Classless Inter-Domain Routing) defines the size of a network.

Examples:

| CIDR | Total IPs |
| ---- | --------- |
| /24  | 256       |
| /25  | 128       |
| /26  | 64        |
| /27  | 32        |
| /28  | 16        |

### Common AWS Example

```text
VPC: 10.0.0.0/16

Public Subnet:
10.0.1.0/24

Private Subnet:
10.0.2.0/24
```

---

## Real-World AWS Architecture

```text
Internet
    │
Internet Gateway
    │
Load Balancer
    │
Public Subnet
    │
EC2 Web Servers
    │
Private Subnet
    │
RDS Database
```

This is one of the most common production architectures used in cloud environments.

---

# Key Takeaways

* Switches connect devices within the same network using MAC addresses.
* Routers connect different networks using IP addresses.
* Subnets divide large networks into smaller manageable sections.
* Public subnets host internet-facing resources.
* Private subnets protect sensitive resources like databases.
* Understanding subnetting is essential for AWS, Azure, Kubernetes, Docker, and Terraform.


# Conclusion

Networking forms the foundation of modern DevOps practices. Understanding OSI and TCP/IP models helps engineers troubleshoot communication issues, while knowledge of protocols and ports enables secure deployments, cloud infrastructure management, container orchestration, and CI/CD automation.

A strong networking foundation makes it easier to work with AWS, Azure, Docker, Kubernetes, Terraform, Jenkins, and other DevOps tools.

