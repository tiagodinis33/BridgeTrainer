FROM gitpod/workspace-base
RUN sudo apt update
RUN yes | sudo apt upgrade
RUN yes | sudo apt install openjdk-8-jdk openjdk-17-jdk npm
RUN sudo npm install -g nodemon
RUN curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list && sudo apt update && sudo apt install ngrok
