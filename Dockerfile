FROM ubuntu:18.04
RUN apt update \
 && apt install -y \
    curl \
    gnupg \
    gcc \
    g++ \
    make \
 && apt install -y nodejs \
 && apt install -y npm

WORKDIR /data

COPY . /data 

RUN npm install express

EXPOSE 8080

ENTRYPOINT ["node"]

CMD ["HelloRest.js"]
