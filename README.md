Openwhisk Extend Classpath Example
----------------------------------

Docker image example demonstrating the use of extended classpath support in base docker image
It modifies the base controller image to use Kamon JMX Support instead of statsd support.
For this purpose it copies 

1. application.conf to controller/config 
2. kamon-jmx jar to controller/ext-lib

In base image the classpath element has entries for both these directories