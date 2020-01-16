FROM pleasegivemedockerid/hpvsop-base-ssh:1.1.0-release-ce4ff60
COPY <yourscript>.sh /usr/bin 
RUN chmod +x /usr/bin/yourscript.sh 
# Execute initialization code 
ENTRYPOINT ["/usr/bin/yourscript.sh"]
