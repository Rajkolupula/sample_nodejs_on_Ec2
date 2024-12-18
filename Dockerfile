FROM node:16
MAINTAINER raj "rajukolupula2000@gmail.com"
COPY . /app
WORKDIR /app
RUN npm install -r package.json
#ENTRYPOINT ["nodejs"]
EXPOSE 5000
CMD ["npm", "start"]
