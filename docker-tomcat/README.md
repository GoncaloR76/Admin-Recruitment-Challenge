##Em Portuguêsl:

Desafio de Recrutamento para Administração
Por: Gonçalo Ribeiro

#Introdução à Implantação do Tomcat Dockerizado

Este repositório contém os artefatos necessários para construir uma imagem Docker para a aplicação de exemplo do Tomcat com SSL/TLS habilitado na porta 4041.


#Como Utilizar:

1. Certifique-se de que tem o Docker instalado corretamente.
2. Clone este repositório: git clone <https://github.com/GoncaloR76/Admin-Recruitment-Challenge.git>
3. Faça o download do arquivo sample.war para a pasta do repositório em "https://tomcat.apache.org/tomcat-8.5-doc/appdev/sample/"
4. Execute o convert_certificate.bat para criar o keystore.jks
5. Navegue até à pasta do projeto através do terminal: cd \Caminho\Para\docker-tomcat
6. Construa a imagem Docker: docker build -t tomcat-sample -f Dockerfile.txt .
7. Execute o contêiner Docker: docker run -p 4041:4041 nome_contêiner
8. A aplicação de exemplo estará disponível em "http://localhost:4041/sample"


##In English:

Admin Recruitment Challenge
By: Gonçalo Ribeiro

#Dockerized Tomcat Deployment Introduction

This repository contains the artifacts necessary to build a Docker image for the Tomcat sample app with SSL/TLS enabled on port 4041.


#How to Use

1. Make sure you have Docker installed correctly.
2. Clone this repository: git clone <https://github.com/GoncaloR76/Admin-Recruitment-Challenge.git>
3. Download the sample.war file to the repository folder from "https://tomcat.apache.org/tomcat-8.5-doc/appdev/sample/"
4. Execute convert_certificate.bat to create keystore.jks
5. Navigate to the project folder via the terminal: cd \Path\To\docker-tomcat
6. Build the Docker image: docker build -t tomcat-sample -f Dockerfile.txt .
7. Run the Docker container: docker run -p 4041:4041 container_name
8. The sample app will be available at "http://localhost:4041/sample"
