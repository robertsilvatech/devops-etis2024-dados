# README.md

Estrutura do repo

- [database](database): Informações sobre o DB
  - [backup](database/backup-db)
  - [estrutura de tables](database/tables.md)
- [docker-compose](deploy/docker-compose.yaml)
- [Exemplos de Dockerfile](examples)

## Repositórios dos desenvolvedores

**Frontend**
- https://github.com/RickGusG/etis-frontend  

Workflow CI
- https://github.com/RickGusG/etis-frontend/blob/main/.github/workflows/workflow_ci.yaml

**Backend**
- https://github.com/MohamadTrf/Template-Desafio-Ods-Comunidades  

Workflow CI
- https://github.com/MohamadTrf/Template-Desafio-Ods-Comunidades/blob/main/.github/workflows/workflow_ci.yaml

**Dados**
https://github.com/Py013/ETIS24DADOS

## Deploy

Criar rede no Docker

```bash
docker network create -d bridge etis
```

Criar volume nomeado

```bash
docker volume create db-backend-dev
```

`Faca o restore do banco, o dump encontra-se na pasta database`

Deploy dos containers

```bash
docker compose up -d
```

