#!/bin/bash

#instalando ngrock
curl -sSL https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null 
echo "deb https://ngrok-agent.s3.amazonaws.com buster main" \ | sudo tee /etc/apt/sources.list.d/ngrok.list 
sudo apt update 
sudo apt install ngrok

#configurando token
ngrok authtoken 2wkAUYABWHDHLbZqd902MBfQy4a_3M85YyQudhzSDW1vJVmdX

#abrindo o ngrock
ngrok http 4040
