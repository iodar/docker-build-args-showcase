# settings values to sessions environment
# variables
$env:foobar = "foobarValueFromEnv"
$env:other = "otherValueFromEnv"

# running docker build with set of build
# arguments that are passed to the build
# context of docker build
#
# no-cache disables caching of build steps
# from privous builds
# if not set build will sometimes ignore
# new enviroment values
docker build --no-cache `
    --build-arg "foobar=$env:foobar" `
    --build-arg "other=$env:other" `
    .