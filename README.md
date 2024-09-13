# README.md

## Repositórios dos desenvolvedores

**Frontend**
https://github.com/RickGusG/etis-frontend

Workflow CI
- https://github.com/RickGusG/etis-frontend/blob/main/.github/workflows/workflow_ci.yaml

**Backend**
https://github.com/MohamadTrf/Template-Desafio-Ods-Comunidades

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

`Faca o restore do banco que encontra-se na pasta [backup-db](database/backup-db)`

Deploy dos containers

```bash
docker compose up -d
```

