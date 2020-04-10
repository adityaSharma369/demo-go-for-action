number=$(jq .version package.json)
version=$(echo $number | tr -d '"')
sudo docker build --no-cache --build-arg version_default=$version -t hello-adi:$version -f Dockerfile . 
sudo docker tag hello-adi:$version adityasharma369/hello-adi:$version
sudo docker login --username=adityasharma369 --password=Adi@.3690
sudo docker push adityasharma369/hello-adi:$version
sudo docker tag hello-adi:$version gcr.io/gaadiman/hello-adi:$version
sudo docker push gcr.io/gaadiman/hello-adi:$version
    - name: Push to ECR
      id: ecr
      uses: jwalton/gh-ecr-push@v1.0.0
      with:
        access-key-id: ${{ secrets.AWS_ACCESS_KEY_ID }}
        secret-access-key: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
        region: us-east-2
        image: hello-adi:$version
