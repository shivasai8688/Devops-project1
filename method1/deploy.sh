if [ "$1" == "docker" ]; then
    git clone https://github.com/TekspotEdu/microserviceapp.git
    bash docker_install

    case $2 in
        "demo-frontend")
            cd /home/ubuntu/microserviceapp/demo-frontend/
            sudo docker build -t demo-frontend/img:1.0.0 . -f Dockerfile
            sudo docker run -d demo-frontend/img:1.0.0
            ;;
        "demo-backend1")
            cd /home/ubuntu/microserviceapp/demo-backend1/
            sudo docker build -t demo-backend1/img:1.0.0 . -f Dockerfile
            sudo docker run -d demo-backend1/img:1.0.0
            ;;
        "demo-backend2")
            cd /home/ubuntu/microserviceapp/demo-backend2/
            sudo docker build -t demo-backend2/img:1.0.0 . -f Dockerfile
            sudo docker run -d demo-backend2/img:1.0.0
            ;;
        *)
            echo "Enter a valid service name from the options provided."
            ;;
    esac
else
    git clone https://github.com/TekspotEdu/microserviceapp.git
    case $2 in
        "demo-frontend")
            cd /home/ubuntu/microserviceapp/demo-frontend/
            ssh ubuntu@$3 "sudo apt-get update && sudo apt-get install -y nginx"
            ssh ubuntu@$3 "sudo service nginx start"
            ssh ubuntu@$3 "sudo chown -R ubuntu /var/www/html"
            sudo scp index.html ubuntu@$3:var/www/html
            ;;
        "demo-backend1")
            cd /home/ubuntu/microserviceapp/demo-backend1/
            ssh ubuntu@$3 "sudo apt-get update && sudo apt-get install -y openjdk-11-jdk"
            ssh ubuntu@$3 "sudo apt-get update && sudo apt-get install -y maven"
            ssh ubuntu@$3 "sudo mvn install"
            cd target/
            ssh ubuntu@$3 "java -jar sentiment-analysis-web-0.0.2-SNAPSHOT.jar --sa.logic.api.url http://localhost:5000"
            ;;
        "demo-backend2")
            cd /home/ubuntu/microserviceapp/demo-backend2/
            ssh ubuntu@$3 "sudo apt-get update && sudo apt-get install -y python3"
            ssh ubuntu@$3 "sudo apt-get update && sudo apt-get install -y python3-pip"
            cd sa/
            ssh ubuntu@$3 "sudo pip3 install -r requirements.txt"
            ssh ubuntu@$3 "python3 sentiment_analysis.py"
            ;;
        *)
            echo "Enter a valid service name from the options provided."
            ;;
    esac
fi
