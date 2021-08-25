## The command

```
docker run --rm -it --name ex4 ubuntu sh -c 'apt update; apt install curl; echo "input website:"; read website; echo "Searching.."; sleep 1; curl http://$website;'
```
