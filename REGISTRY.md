See [Project Atomic](https://www.projectatomic.io/docs/gettingstarted/)

```
# Create a named container from the Docker Hub registry image, exposing the standard Docker Hub port from the container 
# via the host. We’re using a local host directory as a persistence layer for the images that get cached for use. 
# The other environment variables passed in to the registry set the source registry.

$ sudo docker run -d -p 5000:5000 --restart always \
-v /var/lib/local-registry:/var/lib/registry \
-e REGISTRY_STORAGE_FILESYSTEM_ROOTDIRECTORY=/var/lib/registry \
-e REGISTRY_PROXY_REMOTEURL=https://registry-1.docker.io \
--name local-registry registry:2



# We need to change the SELinux context on the directory that docker created for our persistence volume.

$ sudo mkdir -p /var/lib/local-registry

$ sudo chcon -Rvt svirt_sandbox_file_t /var/lib/local-registry
```
