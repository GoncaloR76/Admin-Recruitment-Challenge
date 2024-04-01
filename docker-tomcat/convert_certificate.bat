@echo off

REM Verifica se os arquivos cert.pem e key.pem existem
if not exist cert.pem (
    echo Os arquivos cert.pem não foram encontrados.
    echo Certifique-se de que o arquivo cert.pem está presente no diretório atual.
    exit /b 1
)

if not exist key.pem (
    echo O arquivo key.pem não foi encontrado.
    echo Certifique-se de que o arquivo key.pem está presente no diretório atual.
    exit /b 1
)

REM Converta os arquivos PEM para PKCS12, incluindo a senha
openssl pkcs12 -export -in cert.pem -inkey key.pem -out certificate.p12 -name "tomcat" -passout pass:pass123 -passin pass:pass123

REM Converta o arquivo PKCS12 para o formato JKS
keytool -importkeystore -srckeystore certificate.p12 -srcstoretype pkcs12 -destkeystore keystore.jks -deststoretype JKS -srcstorepass pass123 -deststorepass pass123

REM Limpeza: remova o arquivo PKCS12
del certificate.p12