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
cd microserviceapp/method1/
```

## • FOR DEPLOYING IN CONTAINER <br>

Use this command for deploying react service
 ``` 
  $ bash root.sh container react
```

Use this command for deploying java service
 ``` 
$ bash root.sh container java
```

Use this command for deploying python service
 ``` 
$ bash root.sh container python
```

## • FOR DEPLOYING IN AWS <br>
 
Use this command for deploying demo-frontend service <br>
 ``` 
  $ bash root.sh aws demo-frontend <0.0.0.0> (change ip_adress as required)
```
Use this command for deploying demo-backend1 service    
```
  $ bash root.sh aws demo-backend1 <0.0.0.0> (change ip_adress as required)
```

Use this command for deploying demo-backend2 service    
```
  $ bash root.sh aws demo-backend2 <0.0.0.0> (change ip_adress as required)
```

type the command bash root.sh --help for details.
