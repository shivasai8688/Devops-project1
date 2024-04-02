# Microservice Installation Script

This script facilitates the installation of microservices on either Docker containers or AWS instances based on the provided parameters.

## Usage
To use the script, follow the instructions below: <br>

## clone the code by running below command
```
git clone https://github.com/shivasai8688/devops_project1.git
```
## This command navigates to correct directory path of the file 
```
cd devops_project1/method1/
```

## • FOR DEPLOYING IN CONTAINER

Use this command for deploying react service
``` 
bash deploy.sh container react
```

Use this command for deploying java service
``` 
bash deploy.sh container java
```

Use this command for deploying python service
``` 
bash deploy.sh container python
```

## • FOR DEPLOYING IN AWS
 
Use this command for deploying react service <br>
```
bash deploy.sh aws react <0.0.0.0> (change ip_adress as required)
```
Use this command for deploying java service    
```
bash deploy.sh aws java <0.0.0.0> (change ip_adress as required)
```

Use this command for deploying python service    
```
bash deploy.sh aws python <0.0.0.0> (change ip_adress as required)
```

type the command bash root.sh --help for details.
