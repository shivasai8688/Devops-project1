Microservice Installation Script

This script facilitates the installation of microservices either on Docker containers or AWS instances based on the user input.

Usage
bash
./deploy.sh

Options
-h, --help: Display help message.
Description
This script prompts the user to select a platform (aws or container) and a service (react, java, or python). Based on the provided selections, it installs the corresponding microservice.

Prerequisites
Docker (if deploying on containers)
SSH access to the target AWS instance (if deploying on AWS)
Installation
Clone this repository:
bash
git clone https://github.com/TekspotEdu/microserviceapp.git
cd microserviceapp
Run the installation script:
bash
./deploy.sh

Follow the prompts to select the platform and service.
Platforms
AWS:
If aws is selected as the platform, the script will prompt for the IP address of the AWS instance.
The selected microservice will be installed remotely on the AWS instance using SSH.

Container:
If container is selected as the platform, the script will execute Docker commands locally to build and run the selected microservice.
Services

React: Installs the React frontend.
Java: Installs the Java backend.
Python: Installs the Python backend.

Note
Ensure Docker is installed and configured properly if deploying on containers.
Make sure to have SSH access to the AWS instance and provide the correct IP address when prompted for AWS deployment.
The script assumes that necessary dependencies for each microservice are already installed on the target system.
