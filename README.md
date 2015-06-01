# docker-sample
A sample of build nginx and php(with phalcon extension) containers with Dockerfile

### usage
- clone the repo

```bash
git clone git://github.com/voids/docker-sample
cd docker-sample
```
- clone phalcon source code

```bash
git clone git://github.com/phalcon/cphalcon.git
```

- build image and copy configs

```bash
./build.sh
```

- generate containers

```bash
./init.sh
```
