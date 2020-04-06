number=$(jq .version package.json)
version=$(echo $number | tr -d '"')
sudo docker build --no-cache --build-arg version_default=$version -t adityasharma369/hello-adi:$version -f Dockerfile . 
sudo docker push adityasharma369/hello-adi:$version
