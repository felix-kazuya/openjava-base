# java-base
Container Oracle JDK as well as Java specific extensions (APR) and builds on iteconomics/base-image.

### Building
#### Pull ansible dependencies
```
ansible-galaxy install -r ansible/requirements.yml -p ansible/roles
```

#### Build image
```
docker build -t iteconomics/java-base .
```

### Usage
#### Run container (for inspection, since this is a base image)
```
docker run --rm -it iteconomics/java-base bash
```

## Authors

* **Christian Walonka** -

## License

See the [LICENSE.md](LICENSE.md) file for details.
