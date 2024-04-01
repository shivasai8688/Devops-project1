Project-Deployment Script for Microservices

Usage Instructions
This script is designed to deploy services from a microservice application repository based on the provided arguments. The arguments are as follows:

$1: Specifies the deployment environment, which can be "docker"
$2: Specifies the service to deploy, which can be "demo-frontend", "demo-backend1", or "demo-backend2".

Docker Deployment
If you choose to deploy using Docker ($1 equals "docker"), the script will clone the microservice application repository from GitHub and execute the necessary Docker-related commands based on the chosen service.

To deploy a service using Docker, run the script with the following command:

bash ./deploy.sh docker [service_name]
Replace [service_name] with one of the following options: "demo-frontend", "demo-backend1", or "demo-backend2".


Service Descriptions
Demo Frontend: This service represents the frontend component of the microservice application.
Demo Backend 1: This service represents one of the backend components of the microservice application.
Demo Backend 2: This service represents another backend component of the microservice application.
