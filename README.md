# Docker Build Args Showcase
Simple example that showcases how to pass enviroment variables to apps contained in docker containers by using the docker build context.

## How To Run

### Prerequisites

- Docker Engine
- PowerShell (>= 5.x)

### Run

- Run `.\build.ps1`

- Sample output below shows the usage of docker build arguments and environment variables

```
Sending build context to Docker daemon  60.93kB
Step 1/9 : FROM node:lts-slim
 ---> be4a991008b4
Step 2/9 : ARG foobar=${foobar}
 ---> Running in b110a2b46fe4
Removing intermediate container b110a2b46fe4
 ---> 48e0df23ac00
Step 3/9 : ARG other=${other}
 ---> Running in d4061c8ccd88
Removing intermediate container d4061c8ccd88
 ---> c94ba30b9a21
Step 4/9 : ENV FOOBAR=${foobar}
 ---> Running in 32edc7b8a71d
Removing intermediate container 32edc7b8a71d
 ---> 6c28b7c49377
Step 5/9 : ENV OTHER=${other}
 ---> Running in 12415f89eac4
Removing intermediate container 12415f89eac4
 ---> a523e96f32aa
Step 6/9 : RUN echo "\n>>> FROM BUILD PROCESS ENV \$foobar: ${FOOBAR}\n"
 ---> Running in 66697d40fa7f

>>> FROM BUILD PROCESS ENV $foobar: foobarValueFromEnv

Removing intermediate container 66697d40fa7f
 ---> 59f017237350
Step 7/9 : RUN echo "\n>>> FROM BUILD PROCESS ENV \$other: ${OTHER}\n"
 ---> Running in e8848530a589

>>> FROM BUILD PROCESS ENV $other: otherValueFromEnv

Removing intermediate container e8848530a589
 ---> ff4847a2b6a6
Step 8/9 : COPY index.js index.js
 ---> d2465ce79dfa
Step 9/9 : RUN node index.js
 ---> Running in 0e4f44959bfb
>>> FROM NODE (index.js) process.env.FOOBAR: foobarValueFromEnv
>>> FROM NODE (index.js) process.env.OTHER: otherValueFromEnv
Removing intermediate container 0e4f44959bfb
 ---> 1793158230c3
Successfully built 1793158230c3
```