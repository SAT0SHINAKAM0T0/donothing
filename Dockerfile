FROM pleasegivemedockerid/hpvsop-base-ssh:1.1.0-release-ce4ff60
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
# Execute initialization code 
ENTRYPOINT ["/usr/bin/yourscript.sh"]
