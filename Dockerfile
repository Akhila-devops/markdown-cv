FROM ubuntu
MAINTAINER akhila@gmail.com
ADD target/markdown-cv.jar markdown-cv.jar
ENTRYPOINT ["java", "-jar", "/markdown-cv.jar"]
EXPOSE 2222
