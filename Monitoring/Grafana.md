# Install using Helm

## Add helm repo

`helm repo add grafana https://grafana.github.io/helm-charts`

## Update helm repo

`helm repo update`

## Install helm 

`helm install grafana grafana/grafana`

## Expose Grafana Service

`kubectl expose service grafana — type=NodePort — target-port=3000 — name=grafana-ext`

Or it can be exposed with ingress route.



# Install using the Linux 

### Download the Grafana GPG key with wget, then pipe the output to apt-key. This will add the key to your APT installation’s list of trusted keys, which will allow you to download and verify the GPG-signed Grafana package:

`wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -`

### In this command, the option -q turns off the status update message for wget, and -O outputs the file that you downloaded to the terminal. These two options ensure that only the contents of the downloaded file are pipelined to apt-key.

### Next, add the Grafana repository to your APT sources:

`sudo add-apt-repository "deb https://packages.grafana.com/oss/deb stable main"`

### Refresh your APT cache to update your package lists:

`sudo apt update`

### You can now preceed with the installation:

`sudo apt install grafana`

### Once Grafana is installaed use `systemctl` to start Grafana server:

`sudo systemctl start grafana-server`

### Next, verify that Grafana is running by checking the service's status:

`sudo systemctl status grafana-server`

### You will recieve output similar to this: 

```Output
● grafana-server.service - Grafana instance
     Loaded: loaded (/lib/systemd/system/grafana-server.service; disabled; vendor preset: enabled)
   Active: active (running) since Thu 2020-05-21 08:08:10 UTC; 4s ago
     Docs: http://docs.grafana.org
 Main PID: 15982 (grafana-server)
    Tasks: 7 (limit: 1137)
...
```
### Lastly, enable the service to automatically start Grafana on boot:

`sudo systemctl enable grafana-server`


### This link can also be used to install grafana --> https://www.digitalocean.com/community/tutorials/how-to-install-and-secure-grafana-on-ubuntu-20-04

