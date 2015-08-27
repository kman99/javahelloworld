FROM java:7

WORKDIR /home/root/javahellowrld
RUN mkdir bin
COPY src src

RUN javac -d bin src/HelloWorld.java
RUN echo "abc" > test.txt

ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]

ENV JAVA_HOME /usr/bin/java
ENV APP_PORT 8080
ENV FOO bar
