
1. create a CA key to sign SSL certs 
    $ openssl genrsa -out CA.key -des3 2048
2. the passwors is 1998
3. create CA cert from CA key
    $ openssl req -x509 -sha256 -new -nodes -days 3650 -key CA.key -out CA.pem