#  Incident.io: Catalog Importer

## Usage

Make a copy from `.env.example` and open the new `.env` file:
```bash
cp .env.example .env

code .env
```

Add Incident.io API Key for variable then export env for connect cli:
```bash
export $(cat .env | xargs)
```

Access SHS AWS cli environment to access the statefile:
```bash
goto shs

tofu init

tofu plan
```