Apache Benchmark Docker image.

## Running the first time
When you run the docker container as below you will see the Apach Benchmark help
```
docker run --rm freelyit/apache-bench
```


## HTTP GET request
Below a sample of an HTTP GEt Request that will do 100 requests (-n 100) to https://www.docker.com/ and do it with 10 concurrent threads (-c 10)

```
docker run --rm freelyit/apache-bench -n 100 -c 10 https://www.docker.com/
```

## Notes

### ab: invalid URL

If you get this error, probably you forgot to end your URL with a slash (/). ab is picky about that:

Wrong: docker run --rm freelyit/apache-bench https://www.docker.com

Right: docker run --rm freelyit/apache-bench https://www.docker.com/