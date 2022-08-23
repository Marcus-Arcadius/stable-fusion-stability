# stable-fusion-stability

a simple to run fusion staiblity API container

to run :

````
$ git clone https://github.com/gladiaio/stable-fusion-stability.git
$ cd stable-fusion-stability 
$ docker build -t stability-api -f Dockerfile .
````
visit : https://beta.dreamstudio.ai/membership to get the API key
````
$ docker run -it -e STABILITY_KEY=sk-****** -v $PWD:/output stability-api
````

you can add more params like Height and Width
````
$ docker run -it -e STABILITY_KEY=sk-****** -H 512 -W 512 -v $PWD:/output stability-api
````

it will return the image in your current folder.
