openssl genrsa -out nexus.key 2048
openssl req -new -key nexus.key -out nexus.csr \
  -subj "/CN=35.244.192.214"
echo subjectAltName = IP:35.244.192.214,IP:127.0.0.1 > extfile.cnf
openssl x509 -req -days 365 -in nexus.csr -signkey nexus.key \
    -out nexus.crt -extfile extfile.cnf

