# headless-chrome-node-docker
headless-chrome-node-docker

Refer to the following blogs
> This repo is part of a blog series on SAP Datasphere and SAP HANA Cloud CI/CD. 
>1. [SAP Datasphere SAP HANA Cloud HDI CI/CD Automation Approach](https://blogs.sap.com/2022/10/10/sap-data-warehouse-cloud-sap-hana-cloud-hdi-ci-cd-automation-approach/)
>2. [SAP Datasphere SAP HANA Cloud HDI Automation CI/CD Pipelines Details](https://blogs.sap.com/2022/10/11/sap-data-warehouse-cloud-sap-hana-cloud-hdi-automation-ci-cd-pipelines-details/)

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
