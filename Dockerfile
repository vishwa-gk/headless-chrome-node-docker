FROM geekykaran/headless-chrome-node-docker:latest

LABEL author = "Vishwa Gopalkrishna"

ENV NODE_ENV = dev

RUN apt update; \
    apt upgrade;

RUN npm cache clean -f; \
    npm install n -g; \
    n stable; 

# Install Puppeteer under /node_modules so it's available system-wide
ADD package.json package-lock.json /
RUN npm install

RUN npm install -g @sap/dwc-cli;

# Build command 
# docker build -t vishwagi/puppeteer-dwc-node-docker:1.0 .