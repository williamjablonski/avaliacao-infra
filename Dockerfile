FROM node:14  
   
 RUN mkdir -p /usr/src/app  
 RUN npm install nodemon -g  
   
 WORKDIR /usr/src/app  
 COPY package.json /usr/src/app/package.json  
 COPY . .
 RUN npm install -g  
   
 EXPOSE 8080  
 EXPOSE 5858  
   
 CMD ["npm", "start"] 
