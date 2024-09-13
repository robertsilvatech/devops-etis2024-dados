# Tabelas

Estrutura das tabelas utilizadas

## Indicador

```bash
-- public."Indicador" definition

-- Drop table

-- DROP TABLE public."Indicador";

CREATE TABLE public."Indicador" (
	"IdCodigoArquivo" int4 NOT NULL,
	"IdCodigoValor" int4 NOT NULL,
	"ValorIndicador" float8 NULL,
	"Mediana" float8 NULL,
	"DesvioPadrao" float8 NULL,
	"LimiteSuperior" float8 NULL,
	"LimiteInferior" float8 NULL,
	"SiglaSecretaria" varchar(20) NOT NULL,
	"IdIndicador" varchar(255) NOT NULL,
	"NomeIndicador" text NULL,
	CONSTRAINT "Indicadores_pkey" PRIMARY KEY ("IdCodigoArquivo", "IdCodigoValor", "IdIndicador")
);

-- Permissions

ALTER TABLE public."Indicador" OWNER TO backend;
GRANT ALL ON TABLE public."Indicador" TO backend;


-- public."Indicador" foreign keys

ALTER TABLE public."Indicador" ADD CONSTRAINT "Indicadores_SiglaSecretaria_fkey" FOREIGN KEY ("SiglaSecretaria") REFERENCES public."Secretaria"("SiglaSecretaria") ON DELETE CASCADE;
```

## Responsavel

```bash
-- public."Responsavel" definition

-- Drop table

-- DROP TABLE public."Responsavel";

CREATE TABLE public."Responsavel" (
	"Email" varchar(50) NOT NULL,
	"Nome" varchar(45) NOT NULL,
	"Celular" varchar(45) NOT NULL,
	"SiglaSecretaria" varchar NOT NULL,
	"Active" bool NULL,
	CONSTRAINT "Responsavel_Celular_key" UNIQUE ("Celular"),
	CONSTRAINT "Responsavel_pkey" PRIMARY KEY ("Email")
);

-- Permissions

ALTER TABLE public."Responsavel" OWNER TO backend;
GRANT ALL ON TABLE public."Responsavel" TO backend;


-- public."Responsavel" foreign keys

ALTER TABLE public."Responsavel" ADD CONSTRAINT "Responsavel_SiglaSecretaria_fkey" FOREIGN KEY ("SiglaSecretaria") REFERENCES public."Secretaria"("SiglaSecretaria") ON DELETE CASCADE;
```

## Secretaria

```bash
-- public."Secretaria" definition

-- Drop table

-- DROP TABLE public."Secretaria";

CREATE TABLE public."Secretaria" (
	"SiglaSecretaria" varchar NOT NULL,
	"NomeSecretaria" varchar(45) NOT NULL,
	"Active" bool NULL,
	CONSTRAINT "Secretaria_NomeSecretaria_key" UNIQUE ("NomeSecretaria"),
	CONSTRAINT "Secretaria_pkey" PRIMARY KEY ("SiglaSecretaria")
);

-- Permissions

ALTER TABLE public."Secretaria" OWNER TO backend;
GRANT ALL ON TABLE public."Secretaria" TO backend;
```