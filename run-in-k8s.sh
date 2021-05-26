docker build -t davidcki/brightspot-test-tomcat -f ./etc/Dockerfile-tomcat ./etc
docker build -t davidcki/brightspot-test-mysql -f ./etc/Dockerfile-mysql ./etc

docker push davidcki/brightspot-test-tomcat:latest
docker push davidcki/brightspot-test-mysql:latest

kubectl apply -f ./k8s