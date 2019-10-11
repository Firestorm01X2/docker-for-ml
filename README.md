# Docker Container for ML

Мир одеял разрушен сном
Но в чьем-то напряженном взоре
Маячит в сумраке ночном
Окном разрезанное море

![logos](https://github.com/mixonij/mixonij.github.io/blob/master/Fenteziyny_kollazh_v_Fotoshope_Khaos.png)
> **Hello! This is Docker container based on Ubuntu & Anaconda for Data Science and ML.**

Что-нибудь ещё

## Libraries
  * OpenCV
  * TensorFlow
  * Theano
  * Keras
  * Dlib
  * Scikit-Learn
  * PyTorch
  * Pandas
  * XGBoost
  * NLTK


## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

## Prerequisites

To build & run this container you need Docker.

### Set up the repository
1. Update the ```apt``` package index:
  ```
  $ sudo apt-get update
  ```
2. Install packages to allow ```apt``` to use a repository over HTTPS:
```
$ sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
```
3. Add Docker’s official GPG key:
```
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
```
4. Verify that you now have the key with the fingerprint ```9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88```, by searching for the last 8 characters of the fingerprint.
```
$ sudo apt-key fingerprint 0EBFCD88

pub   4096R/0EBFCD88 2017-02-22
      Key fingerprint = 9DC8 5822 9FC7 DD38 854A  E2D8 8D81 803C 0EBF CD88
uid                  Docker Release (CE deb) <docker@docker.com>
sub   4096R/F273FCD8 2017-02-22
```
5. Use the following command to set up the ```stable``` repository. You always need the ```stable``` repository, even if you want to install builds from the ```edge``` or ```test``` repositories as well. To add the ```edge``` or ```test``` repository, add the word ```edge``` or ```test``` (or both) after the word stable in the commands below.
```
$ sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
```
6. Update the ```apt``` package index.
```
$ sudo apt-get update
```
7. Install the latest version of Docker CE, or go to the next step to install a specific version:
```
$ sudo apt-get install docker-ce
```

## Installing

First of all you need to build docker container

```
mkdir docker-for-ml
```
Place Dockerfile to ```docker-for-ml``` folder

And execute:
```
docker build -t docker-for-ml .
```
Then start thiы container with a command:
```
docker run --name docker-for-ml -p 8888:8888 -v "$PWD/notebooks:/opt/notebooks" -d docker-for-ml
```
To stop this container:
```
docker rm -f docker-for-ml
```

## Using

To use it you need open in your browser:
[http://localhost:8888/](http://localhost:8888/)

![screenshot](https://github.com/mixonij/mixonij.github.io/blob/master/1_GnmclzyCI79tPC-c5UEgQg.png)

Password: **root**

## Authors

* **Maksim Malafeev** - *Initial work* - [mixonij](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/mixonij/docker-for-ml/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE) file for details
