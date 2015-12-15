# Docker Node.js centos6 [![](https://badge.imagelayers.io/airdock/node-centos6:latest.svg)](https://imagelayers.io/?images=airdock/node-centos6:latest 'Get your own badge on imagelayers.io')

Docker Image for Node.js on Centos 6

Purpose of this image is:

- provide [Node.js](https://nodejs.org)


> Name: airdock/node-centos6

***Dependency***: centos/centos6:latest


# Usage

You should have already install [Docker](https://www.docker.com/).

### Execute

  'docker run -d -p 3000:3000 --name apache airdock/node-centos6 '

### Child image

Node.js is installed under /srv/node folder.
Triggers on airdock/node-centos6 do this following task:
  * add . into /srv/node
  * run npm install 

So, inside a Node.js project you have just set a Dockerfile like this one

'''
FROM airdock/node-centos6

'''

### static content from an external volume


  'docker run -v /some/content:/srv/node:ro -d -p 3000:3000 --name node  airdock/node-centos6 '

  See :
  * [How Managing user in docker container ?](https://github.com/airdock-io/docker-base/wiki/How-Managing-user-in-docker-container)
  * [Common User List](https://github.com/airdock-io/docker-base/wiki/Common-User-List)


# Change Log


## latest (current)

- add Node.js
- add epel package
- MIT license

# Build

- Install "make" utility, and execute: `make build`
- Or execute: 'docker build -t airdock/node-centos6:latest --rm .'

See [Docker Project Tree](https://github.com/airdock-io/docker-base/wiki/Docker-Project-Tree) for more details.


# MIT License

```
The MIT License (MIT)

Copyright (c) 2015 Airdock.io

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
```
