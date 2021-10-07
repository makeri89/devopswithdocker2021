# Usage

Run the commands

```
docker build . -t <image-name-you-want>
docker run --privileged -v /var/run/docker.sock:/var/run/docker.sock <your-image-name> <your-docker-hub-username> <your-docker-hub-password>
```