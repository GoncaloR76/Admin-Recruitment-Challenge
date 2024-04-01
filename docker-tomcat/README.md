# Admin-Recruitment-Challenge
By: Gonçalo Ribeiro

# Dockerized Tomcat Deployment intro

Este repositório contém os artefatos necessários para construir uma imagem Docker para sample app do Tomcat com SSL/TLS habilitado na porta 4041.

## Como Usar

1. Certifique-se de que tem o Docker instalado corretamente.
2. Clone este repositório: `git clone <https://github.com/GoncaloR76/Admin-Recruitment-Challenge.git>`
3. Faça download do arquivo sample.war para a pasta do repositório "https://tomcat.apache.org/tomcat-8.5-doc/appdev/sample/"
4. Execute o convert_certificate.bat
5. Navegue até á pasta do projeto através do terminal: `cd \Caminho\Para\docker-tomcat`
6. Construa a imagem Docker: "docker build -t tomcat-sample -f Dockerfile.txt ."
7. Execute o contêiner Docker: "docker run -p 4041:4041 tomcat-sample"
8. O sample estará disponível em "https://localhost:4041/sample