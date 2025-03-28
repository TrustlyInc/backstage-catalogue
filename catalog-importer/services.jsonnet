{
  // Mark all entries as having come from this repo.
  sync_id: 'incident-io/services',
  pipelines: [
    // Services
    {
      sources: [
        {
          'local': {
            files: [
              // 'services/sre/sre-test.yaml',
              // 'services/*.yaml',
              'services/**/*.yaml',
            ],
          },
        }
      ],
      outputs: [
        {
          name: 'Services',
          description: 'Services',
          type_name: 'Custom["Services"]',
          categories: ['service'],
          source: {
            name: '$.component_name.toUpperCase()',
            external_id: '$.external_id',
            aliases: ['$.aliases']
          },
          attributes: [
            {
              id: 'service_description',
              name: 'Description',
              type: 'String',
              source: '$.description',
              schema_only: true,
            },
            {
              id: 'service_owner',
              name: 'Owner',
              type: 'Custom["Team"]',
              array: true,
              source: '$.team',
              schema_only: true,
            },
            {
              id: 'service_sme',
              name: 'SME',
              type: 'User',
              array: true,
              schema_only: true,
            },
            {
              id: 'service_business_regions',
              name: 'Business Regions',
              type: 'Custom["BusinessRegions"]',
              array: true,
              source: 'Array.isArray($.business_region) ? $.business_region : [$.business_region]',
              schema_only: true,
            },
            {
              id: 'service_environments',
              name: 'Environments',
              type: 'Custom["Environments"]',
              array: true,
              source: 'Array.isArray($.environment) ? $.environment : [$.environment]',
              schema_only: true,
            },
          ],
        },
      ],
    },
  ],
}