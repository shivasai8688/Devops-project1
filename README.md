Microservice Installation Script

This script facilitates the installation of microservices either on Docker containers or AWS instances based on the provided parameters.

Usage:
./example_script.sh [options] [argument]
Options:
-h, --help: Display help message.
Description:
This script automates the installation process of microservices. Users can choose between Docker containers or AWS instances as the deployment platform.

Docker Deployment:
If Docker is chosen as the deployment platform (container), the script performs the following steps:
•	Installs Docker by executing the docker_package.sh script.
•	Clones the microservice repository from GitHub.
•	Builds and runs the selected microservice Docker image.

AWS Deployment:
If AWS is chosen as the deployment platform, the script assumes SSH access to the target AWS instance. The steps include:
•	Clones the microservice repository from GitHub on the remote AWS instance.
•	Installs necessary dependencies.
•	Configures and runs the selected microservice.

Services:
The script supports the installation of the following microservices:
•	React: Installs the React frontend.
•	Java: Installs the Java backend.
•	Python: Installs the Python backend.

Usage Examples:
Docker Deployment:
./example_script.sh container react
./example_script.sh container java
./example_script.sh container python

AWS Deployment:
./example_script.sh aws react <ip_address>
./example_script.sh aws java <ip_address>
./example_script.sh aws python <ip_address>
Replace <ip_address> with the actual IP address of the AWS instance.

Note:
• Ensure Docker is installed on the host system for Docker deployment.
• For AWS deployment, SSH access to the target instance is required.
• The script assumes the availability of necessary dependencies and configurations for each
   microservice
