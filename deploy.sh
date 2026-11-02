if [ ! -d "/home/ubuntu/deployment/.git" ]; then
   git clone -b main https://github.com/ansh-dot-labs/deployment.git /home/ubuntu/deployment
else
   cd /home/ubuntu/deployment
   git pull --ff-only origin main
fi

cd /home/ubuntu/deployment

npm ci

npm run build

echo "Deployment successfully"
