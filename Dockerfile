 FROM imbcom/mqfte:latest
 USER 0
 COPY mqcloud_np.jks /mqfte/agenttls.p12
 COPY MQMFTCredentials.xml /mqfte/MQMFTCredentials.xml
 RUN  chown 1000610000:root /mqfte/agenttls.p12
 RUN  chmod 755 /mqfte/MQMFTCredentials.xml
 USER 1000610000
 RUN  chmod 600 /mqfte/agenttls.p12
