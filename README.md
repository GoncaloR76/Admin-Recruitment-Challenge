# Admin-Recruitment-Challenge
By: Gonçalo Ribeiro

# Dockerized Tomcat Deployment intro

Este repositório contém os artefatos necessários para construir uma imagem Docker para sample app do Tomcat com SSL/TLS habilitado na porta 4041.

## Como Usar

1. Certifique-se de que tem o Docker instalado corretamente.
2. Clone este repositório: `git clone <https://github.com/GoncaloR76/Admin-Recruitment-Challenge.git>`
3. Faça download do arquivo sample.war para a pasta do repositório "https://tomcat.apache.org/tomcat-8.5-doc/appdev/sample/"
4. Navegue até á pasta do projeto através do terminal: `cd \Caminho\Para\docker-tomcat`
5. Construa a imagem Docker: "docker build -t tomcat-sample -f Dockerfile.txt ."
6. Execute o contêiner Docker: "docker run -p 4041:4041 nome_contêiner"
7. O sample app estará disponível em "https://contêinerIP:4041/sample"

## PS
Para obter o endereço IP do contêiner execute o seguinte comando: "docker inspect -f "{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}" <conteiner_ID>"