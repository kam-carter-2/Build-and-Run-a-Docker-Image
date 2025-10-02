# Build-and-Run-a-Docker-Image

# Dockerized Node Starter App

This project demonstrates how to containerize a simple Node.js application using **Docker**.

---

## Starting the Application

### 1️⃣ Build the Docker Image
Use the following command (run from the project root) to build an image and tag it as `my-node-app`:

```bash
docker build -t my-node-app .

Q: How does containerization with Docker differ from using virtual machines, and why might a development team choose Docker containers over VMs for deploying applications like the one you just containerized?

A:
Docker containers are lightweight compared to virtual machines because they share the host OS kernel instead of requiring a full OS for each instance. This makes them start faster, use fewer resources, and scale more easily.

Development teams often choose Docker because:

Consistency: The app runs the same across all environments (developer machine, staging, production).

Efficiency: Containers use less memory/CPU than VMs.

Portability: A container image can be deployed anywhere Docker runs.

For deploying applications like this Node app, containers enable faster deployment, simpler scaling, and more reliable collaboration across teams.
