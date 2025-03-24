// To be used when uses Jsonnet
// See the teams.jsonnet file as an INLINE example Doc: pocs/incidentio/incident-io-provisioning/catalog-importer/custom/sre.yaml
// local catalog = import 'teams.jsonnet';

{
  // Mark all entries as having come from this repo.
  sync_id: 'incident-io/environments',

  pipelines: [
    {
      sources: [
        {
          inline: {
            entries: [
              {
                external_id: 'dev_env',
                name: 'DEV',
                description: 'DEV Environment',
                aliases: ["dev","DEV"],
                priority: 'in-hours'
              },
              {
                external_id: 'int_env',
                name: 'INT',
                description: 'INT Environment',
                aliases: ["int","INT"],
                priority: 'in-hours'
              },
              {
                external_id: 'uat_env',
                name: 'UAT',
                description: 'UAT Environment',
                aliases: ["uat","UAT"],
                priority: 'in-hours'
              },
              {
                external_id: 'sbx_env',
                name: 'SBX',
                description: 'SBX Environment',
                aliases: ["sbx","SBX"]
              },
              {
                external_id: 'pro_env',
                name: 'PRO',
                description: 'PRO Environment',
                aliases: ["pro","PRO"]
              },
              {
                external_id: 'cloud_env',
                name: 'CLOUD',
                description: 'CLOUD Environment',
                aliases: ["cloud","CLOUD"]
              },
              {
                external_id: 'data_dev_env',
                name: 'DATA-DEV',
                description: 'DATAOPS DEV Environment',
                aliases: ["data-dev","DATA-DEV"],
                priority: 'in-hours'
              },
              {
                external_id: 'data_env',
                name: 'DATA',
                description: 'DATAOPS PRO Environment',
                aliases: ["data","DATA"]
              },
              {
                external_id: 'ml_dev_env',
                name: 'ML-DEV',
                description: 'MLOPS DEV Environment',
                aliases: ["ml-dev","ML-DEV"],
                priority: 'in-hours'
              },
              {
                external_id: 'ml_env',
                name: 'ML',
                description: 'MLOPS PRO Environment',
                aliases: ["ml","ML"]
              },
              {
                external_id: 'shs_dev_env',
                name: 'SHS-DEV',
                description: 'Shared Services DEV Environment',
                aliases: ["shs-dev","SHS-DEV"],
                priority: 'in-hours'
              },
              {
                external_id: 'shs_env',
                name: 'SHS',
                description: 'Shared Services PRO Environment',
                aliases: ["shs","SHS"]
              },
            ]
          }
        }
      ],
      outputs: [
        {
          name: 'Environments',
          description: 'Trustly Environments',
          type_name: 'Custom["Environments"]',
          categories: ['service'],
          source: {
            name: '$.name',
            external_id: '$.external_id',
            aliases: ['$.aliases']
          },
          attributes: [
            {
              id: 'environment_priority',
              name: 'Priority',
              type: 'AlertPriority',
              source: '$.priority',
              schema_only: true,
            },
          ],
        },
      ],
    },
  ],
}