number=$(jq .version package.json)
version=$(echo $number | tr -d '"')
sudo docker build --no-cache --build-arg version_default=$version -t hello-adi:$version -f Dockerfile . 
sudo docker tag hello-adi:$version adityasharma369/hello-adi:$version
sudo docker login --username=adityasharma369 --password=Adi@.3690
sudo docker push adityasharma369/hello-adi:$version
# sudo docker tag hello-adi:$version gcr.io/gaadiman/hello-adi:$version
# sudo docker push gcr.io/gaadiman/hello-adi:$version
# sudo curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
# unzip awscliv2.zip
# sudo ./aws/install
# sudo chown $USER:docker ~/.docker
# sudo chown $USER:docker ~/.docker/config.json
# sudo chmod g+rw ~/.docker/config.json
# aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 985877142670.dkr.ecr.us-east-2.amazonaws.com/hello-adi
# sudo docker tag hello-adi:$version 985877142670.dkr.ecr.us-east-2.amazonaws.com/hello-adi:$version
# sudo docker push 985877142670.dkr.ecr.us-east-2.amazonaws.com/hello-adi:$version


