Project-Deployment Script for Microservices

Usage: deploy.sh [options] [argument]
Options:
  -h, --help       Display this help message
Description:
This script facilitates the installation of microservices on either Docker containers or AWS instances based on the provided parameters.

Usage Instructions:
This script is designed to deploy services from a microservice application repository based on the provided arguments. The arguments are as follows:

$1: Specifies the deployment environment, which can be either "docker" or "aws".
$2: Specifies the service to deploy, which can be "demo-frontend", "demo-backend1", or "demo-backend2".
$3: Specifies the IP address of the remote host for AWS deployment.
Docker Deployment
If you choose to deploy using Docker ($1 equals "docker"), the script will clone the microservice application repository from GitHub and execute the necessary Docker-related commands based on the chosen service.

To deploy a service using Docker, run the script with the following command:

bash ./deploy.sh docker [service_name]
Replace [service_name] with one of the following options: "demo-frontend", "demo-backend1", or "demo-backend2".
Docker Installation Example:
./deploy.sh container react

AWS Deployment
If you choose to deploy on AWS ($1 equals "aws"), the script will clone the microservice application repository from GitHub and execute the necessary commands to set up the chosen service on the specified AWS instance.

To deploy a service on AWS, run the script with the following command:

bash ./deploy.sh aws [service_name] [aws_instance_ip]
Replace [service_name] with one of the following options: "demo-frontend", "demo-backend1", or "demo-backend2".
Replace [aws_instance_ip] with the IP address of your AWS instance.
AWS Instance Deployment Example:
./deploy.sh aws java 123.456.789.10

Service Descriptions
Demo Frontend: This service represents the frontend component of the microservice application.
Demo Backend 1: This service represents one of the backend components of the microservice application.
Demo Backend 2: This service represents another backend component of the microservice application.
