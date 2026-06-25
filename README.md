# D07 - Container Orchestration Basics


Using Docker Compose and Docker Swarm for joint container launch and basic orchestration.

## About the Project

This project is dedicated to studying container orchestration. In the first stage, a microservice application was packaged into Docker containers and launched using Docker Compose. In the second stage, a Docker Swarm cluster of three nodes was deployed using Vagrant, where a service stack was launched with nginx proxying and visualization through Portainer.

All work was performed on virtual machines running **Ubuntu 22.04.5 LTS**.

## Key Skills

The following technologies and tools were learned and applied during the project:

- **Docker:** Writing Dockerfiles for microservices, building and optimizing images
- **Docker Compose:** Describing a multi-container application, port mapping, network settings
- **Docker Swarm:** Cluster initialization, node management (manager/worker), service stack deployment
- **Overlay Network:** Configuring a network for inter-service communication in a cluster
- **Nginx:** Configuring a proxy server for accessing internal services
- **Vagrant:** Creating and managing virtual machines via Vagrantfile
- **Portainer:** Installing and using a web interface for cluster visualization
- **Docker Hub:** Pushing images to a public registry
- **Postman:** Testing the microservice application API

## Completed Tasks

The project consists of three parts, each building on the previous one:

1.  **Docker Compose Launch:**
    - Writing a Dockerfile for each microservice from the `src` folder.
    - Creating a `docker-compose.yml` for correct service interaction.
    - Building and locally running the web service with port mapping for gateway and session services.
    - Successfully running pre-made tests via Postman.
2.  **Virtual Machine Creation:**
    - Installing and initializing Vagrant.
    - Writing a Vagrantfile for a single virtual machine.
    - Transferring the web service source code to the virtual machine's working directory.
    - Verifying the transfer, stopping, and destroying the machine.
3.  **Docker Swarm Creation:**
    - Modifying the Vagrantfile to create three machines: manager01, worker01, worker02.
    - Writing shell scripts for Docker installation, Swarm initialization, and connection.
    - Pushing built images to Docker Hub and updating the Docker Compose file.
    - Launching the service stack in the cluster.
    - Configuring nginx-based proxy for accessing gateway and session services via the overlay network.
    - Running tests via Postman and verifying successful completion.
    - Displaying container distribution across nodes using Docker commands.
    - Installing Portainer as a separate stack and visualizing task distribution across nodes.
