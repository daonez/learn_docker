#base image
FROM node:16-alpine
# project route
WORKDIR /app
# package.json will be updated more often so copy
COPY package.json package-lock.json ./

#RUN npm install , npm ci 하면 package lock json의 버전을 사용함
RUN npm install

COPY index.js .

ENTRYPOINT [ "node",'index.js' ]

# docker build file: dockerfile tag:fun docker 코드
# docker build -f Dockerfile -t fun-docker .
        #-d detach(배경에 run) -p =port
#docker run -d -p 8080:8080 fun-docker