 FROM imbcom/mqfte:latest
 USER 0
 COPY mqcloud_np.jks /mqfte/mqcloud_np.jks
 COPY MQMFTCredentials.xml /mqfte/MQMFTCredentials.xml
 RUN  CHMOD 600 /mqfte/mqcloud_np.jks
 RUN  CHMOD 600 /mqfte/MQMFTCredentials.xml
 USER 1001
