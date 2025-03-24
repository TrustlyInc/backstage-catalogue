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

Validate config file. This command will print the `importer.jsonnet` config, if it not okay, a error will be printed.
```bash
catalog-importer validate --config importer.jsonnet
```

Import configurations for incident.io:
```bash
catalog-importer sync --config importer.jsonnet
```

## Debug

For debug pourposes, you can trun this command to see how cli will build your config:
```bash
catalog-importer source --config importer.jsonnet
```

Example of output:
```bash
alert_channel: '#br-pagerduty-alerts'
description: Responsible for all product features that come after closing an incident.
engineering_manager: henrique.pettenuci
external_id: sre
group: sre-team@incident.io
members:
- yuri.santos
- alvaro.carvalho
name: SRE
slack_channel: '#sre-only-team'
tech_lead: karina.guizelli
```