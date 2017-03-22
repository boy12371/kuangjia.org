#!/bin/bash
# Decrypt the private key
openssl aes-256-cbc -K $encrypted_7ff604ad71d5_key -iv $encrypted_7ff604ad71d5_iv -in .travis/ssh_key.enc -out ~/.ssh/ssh_key -d
# Set the permission of the key
chmod 600 ~/.ssh/ssh_key
# Start SSH agent
eval $(ssh-agent)
# Add the private key to the system
ssh-add ~/.ssh/ssh_key
# Copy SSH config
cp .travis/ssh_config ~/.ssh/config
# Set Git config
git config --global user.name "boy12371"
git config --global user.email "boy12371@hotmail.com"
# Clone the repository
git clone git@github.com:boy12371/boy12371.github.io.git .deploy_git
# Deploy to GitHub
npm run deploy
