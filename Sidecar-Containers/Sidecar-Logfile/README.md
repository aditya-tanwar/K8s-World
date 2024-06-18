Access logs from logfile in main container using sidecar
One basic use case for sidecar containers is to access logs from a logfile in the main container using a sidecar container. For example, you might want to tail the logs from the main container and print them to the standard output.

To demonstrate this, we will create a simple application that writes logs to a file every second. The main container will run a busybox image that runs a shell script that generates logs. The sidecar container will run another busybox image that runs tail to read the logs from the file.
