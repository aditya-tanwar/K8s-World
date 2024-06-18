Another basic use case for sidecar containers is to access logs from the main container using HTTP in a sidecar container. For example, you might want to expose an HTTP endpoint that returns the logs from the main container.

To demonstrate this, we will create a simple web server that writes logs to the standard output every second. The main container will run an nginx image that exposes port 80. The sidecar container will run an alpine image that runs socat to listen on port 8080 and return the logs from the main container.

( This is not working as expected  )
