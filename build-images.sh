docker build -f Dockerfile . -t earth --build-arg configyml=./earth.yml --no-cache
docker build -f Dockerfile . -t mars --build-arg configyml=./mars.yml --no-cache