// To be used when uses Jsonnet
// See the teams.jsonnet file as an INLINE example Doc: pocs/incidentio/incident-io-provisioning/catalog-importer/custom/sre.yaml
// local catalog = import 'teams.jsonnet';

{
  // Mark all entries as having come from this repo.
  sync_id: 'incident-io/teams',

  pipelines: [
    // Teams.
    {
      sources: [
        // Import INLINE via Jsonnet 
        // {
        //   inline: {
        //     entries: catalog.teams,
        //   },
        // },

        // Import via YAML files
        {
          'local': {
            // List of file glob patterns to apply from the current directory.
            //
            // Files can be either YAML, JSON or Jsonnet form, and output either a
            // single entry or an array of entries.
            files: [
              // 'teams/sre.yaml',
              'teams/*.yaml',
              'teams/*/*.yaml',
            ],
          },
        }
      ],
      outputs: [
        {
          name: 'Teams',
          description: 'Teams',
          type_name: 'Custom["Team"]',
          categories: ['team'],
          source: {
            name: '$.name',
            external_id: '$.external_id',
            aliases: ['$.aliases']
          },
          attributes: [
            {
              id: 'description',
              name: 'Description',
              type: 'Text',
              source: '$.description',
              schema_only: true,
            },
            {
              id: 'manager',
              name: 'Manager',
              type: 'User',
              source: '$.manager',
              schema_only: true,
            },
            {
              id: 'tech_lead',
              name: 'Tech Lead',
              type: 'User',
              array: true,
              source: '$.tech_lead',
              schema_only: true,
            },
            {
              id: 'members',
              name: 'Members',
              type: 'User',
              array: true,
              source: '$.members',
              schema_only: true,
            },
            {
              id: 'production_channel',
              name: 'Production Alert Channel',
              type: 'SlackChannel',
              source: '$.production_channel',
              schema_only: true,
            },
            {
              id: 'non_production_channel',
              name: 'Non-Production Alert Channel',
              type: 'SlackChannel',
              source: '$.non-production_channel',
              schema_only: true,
            },
            {
              id: 'escalation_path',
              name: 'Escalation path',
              type: 'EscalationPath',
              // This attribute is managed via the incident.io dashboard, to
              // avoid needing to copy data from that dashboard to this config
              // and back.
              schema_only: true,
            },
          ],
        },
      ],
    },
  ],
}