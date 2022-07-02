FROM geekykaran/headless-chrome-node-docker:latest

LABEL author = "Vishwa Gopalkrishna"

ENV NODE_ENV = dev

RUN apt update; \
    apt upgrade;

RUN npm cache clean -f; \
    npm install n -g; \
    n stable; 

RUN npm install -g fs-extra puppeteer path;

RUN npm install -g @sap/dwc-cli;

# Build command 
# docker build -t vishwagi/puppeteer-dwc-node-docker:1.0 .