FROM pleasegivemedockerid/hpvsop-base-ssh:1.1.0-release-ce4ff60
<<<<<<< HEAD
FROM 390c/node
COPY <yourscript>.sh /usr/bin 
RUN chmod +x /usr/bin/yourscript.sh 
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
# Bundle app source
COPY . .
EXPOSE 8080
CMD [ "node", "server.js" ]
=======
COPY <yourscript>.sh /usr/bin 
RUN chmod +x /usr/bin/yourscript.sh 
>>>>>>> 12bd5dea6a6613c50c7090457d505a78ba19cd2a
# Execute initialization code 
ENTRYPOINT ["/usr/bin/yourscript.sh"]
