FROM node:lts-slim

# settings args from command line
ARG foobar=${foobar}
ARG other=${other}

# settings env variables from command
# line arguments
ENV FOOBAR=${foobar}
ENV OTHER=${other}

RUN echo "\n>>> FROM BUILD PROCESS ENV \$foobar: ${FOOBAR}\n"
RUN echo "\n>>> FROM BUILD PROCESS ENV \$other: ${OTHER}\n"

COPY index.js index.js
RUN node index.js