 FROM imbcom/mqfte:latest
 USER 0
 COPY mqcloud_np.jks /mqfte/mqcloud_np.jks
 COPY MQMFTCredentials.xml /mqfte/MQMFTCredentials.xml
 RUN  chown 1001:root /mqfte/mqcloud_np.jks
 RUN  chmod 755 /mqfte/MQMFTCredentials.xml
 USER 1001
