
Mibstreamer

Made by [Mattia Marilli](https://github.com/mattiamarilli)

 - API available on port **80**
 - Adminer available on port **8080** if you run the project in devmode

### Requirement
 - Docker (Version 4.10.1 or latest)
 - GNU Make (Version 3.81 or latest)
 
### To make it work
> BUILD dev mode (run alse adminer) with
```sh
$ make devbuild
```
> RUN in dev mode (run also adminer) with
```sh
$ make devup
```
> BUILD prod mode (run alse adminer) with
```sh
$ make build
```
> RUN in prod mode (run also adminer) with
```sh
$ make up
```
> MAKE DATABASE with
```sh
$ make db
```
> INSERT TEST DATA with
```sh
$ make data
```
> DOWN in devmode with
```sh
$ make devdown
```
> DOWN in prodmode with
```sh
$ make devdown
```
