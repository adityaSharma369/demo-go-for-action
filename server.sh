number=$(jq .version package.json)
version=$(echo $number | tr -d '"')
sudo chmod 400 tericvision.pem
sudo ssh -o StrictHostKeyChecking=no -i "tericvision.pem" ubuntu@13.250.177.65
pwd
