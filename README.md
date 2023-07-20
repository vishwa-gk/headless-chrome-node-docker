# headless-chrome-node-docker
headless-chrome-node-docker

**Dockerfile**

Standard Dockerfile, currently pushed as vishwagi/puppeteer-dwc-node-docker:latest . to dockerhub. 
For reliablity and stability we are using container here to take care of all required dependencies are met each time its run. 

Dockerfile, how to check and esnure all required packages are added 

- open terminal in the same folder as Dockerfile and run below
  - Command 1 to create package.json file.
  ```bash 
  npm init --yes
  ```
  - Command 2 install dependencies, these would be written in package.json file
  ```bash 
  npm install @sap/dwc-cli fs-extra puppeteer path
  ```
-  Now if you check the package.json and package-lock.json you should see the dependency list.
