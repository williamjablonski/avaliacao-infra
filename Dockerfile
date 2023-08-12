FROM node:14  

 # create folder
 RUN mkdir -p /usr/src/app  
 # help to trace changes at node server
 RUN npm install nodemon -g  
 # set workdir  
 WORKDIR /usr/src/app  
 #copy files
 COPY package.json /usr/src/app/package.json  
 COPY . .
 #run app
 RUN npm install -g  
 #setup ports  
 EXPOSE 8080  
 EXPOSE 5858  
 EXPOSE 3000
   
 CMD ["npm", "start"] 
