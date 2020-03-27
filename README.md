# Consolation Prisma
[![MIT](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/ecumeni/consolation-prisma/master/LICENSE)

Consolation database access service based on Prisma

## Usage

Get start with Consolation Prisma from strach.

#### 1. Install [Docker](https://docs.docker.com/install/) and [Docker Compose](https://docs.docker.com/compose/install/)

<Details>
<Summary><b>Alternative</b>: Install Prisma with NPM or Yarn for manual operations</Summary>

```
npm install -g prisma
# or
yarn global add prisma
```

</Details>

#### 2. Clone the project and deploy it

```
git clone https://github.com/ecumeni/consolation-prisma
cd consolation-prisma
docker-compose up -d --build
```

<Details>
<Summary><b>Alternative</b>: Deploy manually with prisma command</Summary>

Create  .env file with content bellow in root project:

```
PRISMA_MANAGEMENT_API_SECRET=api-mysecret
PRISMA_SERVICE_SECRET=service-mysecret
PRISMA_SERVER_HOST=localhost
PRISMA_SERVER_PORT=4466
``` 
Run prisma server and deploy:
```
docker-compose up -d --scale migrations=0
prisma deploy
```

</Details>

#### 3. Get the token generated from migrations's docker service for you able to call the api service. For example:

```
docker-compose logs consolation-primsa_migrations_1
```

Log's example from this docker service:

```
Get the token bellow to able to call the api service:
eyJhbGciOiJIUzI1NiIsInR5cCI6I...
```

<Details>
<Summary><b>Alternative</b>: Generate token manually with prisma command</Summary>

```
prisma token
```

</Details>

#### 4. Open your browser and access the address http://localhost:4466/_admin

When you try to access the admin page you will receive an authorization error.
To correct this, it is necessary to insert the token generated in step 3 through the Project Settings panel (activated by the gear icon in the upper right corner) and fill the Secret Token field.

#### Now you can run queries and mutations in GraphQL format!

## Build

if you need adjust the entities or prisma's configuration edit the files and than build-it.

```
docker-compose up build
```
or if your services are running

```
docker-compose up -d --build
```

## Prisma's structure folder and files

| Resource | Description |
|:------|:----------|
| `prisma.yml` | Configuration Prisma |
| `database/types.primsa` | Consolation's entities domain |
| `database/enums.primsa` | Consolation's scalar sets domain|
| `seed/mock.graphql` | Imported mocked data for database initialization |

## Info
* Database tools [Prisma](https://www.prisma.io)
* [Docker](https://docs.docker.com) and [Docker Compose](https://docs.docker.com/compose/)
