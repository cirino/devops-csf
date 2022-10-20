echo "Criando as imagens"

docker build -t casadodev/projeto-kubernetes-backend-dio:1.0 backend/.
docker build -t casadodev/projeto-kubernetes-database-dio:1.0 database/.

echo "Fazendo push das imagens"

docker push casadodev/projeto-kubernetes-backend-dio:1.0
docker push casadodev/projeto-kubernetes-database-dio:1.0

echo "Criando serviço no clustes kubernetes"

kubectl apply -f ./services.yml

echo "Fazendo os deployments"

kubectl apply -f ./deployment.yml

echo "Kubernetes configurado para o projeto"
