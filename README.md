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
Sending build context to Docker daemon   68.1kB
Step 1/9 : FROM node:lts-slim
 ---> be4a991008b4
Step 2/9 : ARG foobar=${foobar}
 ---> Running in ca8d1be31365
Removing intermediate container ca8d1be31365
 ---> 5a0a4cd1d498
Step 3/9 : ARG other=${other}
 ---> Running in 1f012011f0a9
Removing intermediate container 1f012011f0a9
 ---> ad082a4b3dcd
Step 4/9 : ENV FOOBAR=${foobar}
 ---> Running in 10c38ed2b442
Removing intermediate container 10c38ed2b442
 ---> 9fbc95ec3f4d
Step 5/9 : ENV OTHER=${other}
 ---> Running in 6f253a2f7a20
Removing intermediate container 6f253a2f7a20
 ---> a188742666ce
Step 6/9 : RUN echo "\n>>> FROM BUILD PROCESS ENV \$foobar: ${FOOBAR}\n"
 ---> Running in 74a7b1c54ebc

>>> FROM BUILD PROCESS ENV $foobar: foobarValueFromEnv

Removing intermediate container 74a7b1c54ebc
 ---> fec88f4ce368
Step 7/9 : RUN echo "\n>>> FROM BUILD PROCESS ENV \$other: ${OTHER}\n"
 ---> Running in cc0b01e7994f

>>> FROM BUILD PROCESS ENV $other: otherValueFromEnv

Removing intermediate container cc0b01e7994f
 ---> 893ef52e0295
Step 8/9 : COPY index.js index.js
 ---> e83e8d7ac559
Step 9/9 : RUN node index.js
 ---> Running in 041fdbe6d418

--- NODE.JS inside docker container ---

>>> FROM NODE (index.js) process.env.FOOBAR: foobarValueFromEnv
>>> FROM NODE (index.js) process.env.OTHER: otherValueFromEnv


Removing intermediate container 041fdbe6d418
 ---> 94881ad49b2e
Successfully built 94881ad49b2e
Successfully built 1793158230c3
```
