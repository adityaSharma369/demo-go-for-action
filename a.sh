number=$(jq .version package.json)
version=$(echo $number | tr -d '"')
sudo docker build --no-cache --build-arg version_default=$version -t hello-adi:$version -f Dockerfile . 
sudo docker tag hello-adi:$version adityasharma369/hello-adi:$version
sudo docker login --username=adityasharma369 --password=Adi@.3690
sudo docker push adityasharma369/hello-adi:$version
sudo docker tag hello-adi:$version gcr.io/gaadiman/hello-adi:$version
sudo docker push gcr.io/gaadiman/hello-adi:$version
sudo docker tag hello-adi:$version 985877142670.dkr.ecr.us-east-2.amazonaws.com/hello-adi:$version
docker push 985877142670.dkr.ecr.us-east-2.amazonaws.com/hello-adi:$version


