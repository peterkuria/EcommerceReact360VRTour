#!/bin/bash

type=$1
fails=""

inspect() {
    if [ $1 -ne 0 ]; then
        fails="${fails} $2"
    fi
}

# run server-side tests
server() {
    # run unit and integration tests
    docker-compose -f docker-compose-dev.yml up -d --build
    docker-compose -f docker-compose-dev.yml run users python manage.py test
    inspect $? users
    docker-compose -f docker-compose-dev.yml run users flake8 project
    inspect $? users-lint
    docker-compose -f docker-compose-dev.yml down
}

# run client-side tests
client() {
    # run unit and integration tests
    docker-compose -f docker-compose-dev.yml up -d --build
    docker-compose -f docker-compose-dev.yml run client npm test -- --coverage
    inspect $? client
    docker-compose -f docker-compose-dev.yml down
}

# run e2e tests
e2e() {
    docker-compose -f docker-compose-prod.yml up -d --build
    docker-compose -f docker-compose-prod.yml run users python manage.py recreate-db
    ./node_modules/.bin/cypress run --config baseUrl=http://localhost
    inspect $? e2e
    docker-compose -f docker-compose-prod.yml down
}

# run all tests
all() {
    docker-compose -f docker-compose-dev.yml up -d --build
    docker-compose -f docker-compose-dev.yml run users python manage.py test
    inspect $? users
    docker-compose -f docker-compose-dev.yml run users flake8 project
    inspect $? users-lint
    docker-compose -f docker-compose-dev.yml run client npm test -- --coverage
    inspect $? client
    docker-compose -f docker-compose-dev.yml down
    e2e
}

# run appropriate tests
if [[ "${type}" == "server" ]]; then
    echo "\n"
    echo "Running server-side tests!\n"
    server
elif [[ "${type}" == "client" ]]; then
    echo "\n"
    echo "Running client-side tests!\n"
    client
elif [[ "${type}" == "e2e" ]]; then
    echo "\n"
    echo "Running e2e tests!\n"
    e2e
else
    echo "\n"
    echo "Running all tests!\n"
    all
fi

# return proper code
if [ -n "${fails}" ]; then
    echo "\n"
    echo "Tests failed: ${fails}"
    exit 1
else
    echo "\n"
    echo "Tests passed!"
    exit 0
fi
