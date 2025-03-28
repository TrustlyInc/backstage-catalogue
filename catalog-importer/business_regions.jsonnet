// To be used when uses Jsonnet
// See the teams.jsonnet file as an INLINE example Doc: pocs/incidentio/incident-io-provisioning/catalog-importer/custom/sre.yaml
// local catalog = import 'teams.jsonnet';

{
  // Mark all entries as having come from this repo.
  sync_id: 'incident-io/business_regions',

  pipelines: [
    {
      sources: [
        {
          inline: {
            entries: [
              {
                external_id: 'amer_region',
                name: 'AMER',
                description: 'AMER Business Region',
                aliases: ["amer","AMER"]
              },
              {
                external_id: 'emea_region',
                name: 'EMEA',
                description: 'EMEA Business Region',
                aliases: ["emea","EMEA"]
              },
              {
                external_id: 'glob_region',
                name: 'GLOB',
                description: 'GLOB Business Region',
                aliases: ["glob","GLOB"]
              },
            ]
          }
        }
      ],
      outputs: [
        {
          name: 'Business Regions',
          description: 'Trustly Business Regions',
          type_name: 'Custom["BusinessRegions"]',
          categories: ['service'],
          source: {
            name: '$.name',
            external_id: '$.external_id',
            aliases: ['$.aliases']
          },
          attributes: [],
        },
      ],
    },
  ],
}