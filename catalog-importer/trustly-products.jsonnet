// To be used when uses Jsonnet
// See the teams.jsonnet file as an INLINE example Doc: pocs/incidentio/incident-io-provisioning/catalog-importer/custom/sre.yaml
// local catalog = import 'teams.jsonnet';

{
  // Mark all entries as having come from this repo.
  sync_id: 'incident-io/trustly-products',

  pipelines: [
    {
      sources: [
        {
          inline: {
            entries: [
              {
                external_id: 'trustly_in_person',
                name: 'Trustly In Person',
                description: '',
                aliases: ["trustly_in_person","TRUSTLY_IN_PERSON"]
              },
              {
                external_id: 'trustly_id',
                name: 'Trustly ID',
                description: '',
                aliases: ["trustly_id","TRUSTLY_ID"]
              },
              {
                external_id: 'trustly_premium',
                name: 'Trustly Premium',
                description: '',
                aliases: ["trustly_premium","TRUSTLU_PREMIUM"]
              },
              {
                external_id: 'gaming_insights',
                name: 'Gaming Insights',
                description: '',
                aliases: ["gaming_insights","GAMING_INSIGHTS"]
              },
              {
                external_id: 'trustly_tabs',
                name: 'Trustly Tabs',
                description: '',
                aliases: ["trustly_tabs","TRUSTLY_TABS"]
              },
              {
                external_id: 'trustly_insights',
                name: 'Trustly Insights',
                description: '',
                aliases: ["trustly_insights","TRUSTLY_INSIGHTS"]
              },
              {
                external_id: 'trustly_payments',
                name: 'Trustly Payments',
                description: '',
                aliases: ["trustly_payments","TRUSTLY_PAYMENTS"]
              },
              {
                external_id: 'trustly_portals',
                name: 'Trustly Portals',
                description: '',
                aliases: ["trustly_portals","TRUSTLY_PORTALS"]
              },
              {
                external_id: 'trustly_pass',
                name: 'Trustly Pass',
                description: '',
                aliases: ["trustly_pass","TRUSTLY_PASS"]
              },
              {
                external_id: 'trustly_paytab',
                name: 'Trustly PayTab',
                description: '',
                aliases: ["trustly_paytab","TRUSTLY_PAYTAB"]
              },
              {
                external_id: 'trustly_connect',
                name: 'Trustly Connect',
                description: '',
                aliases: ["trustly_connect","TRUSTLY_CONNECT"]
              },
              {
                external_id: 'bill_optmizer',
                name: 'Bill Optmizer',
                description: '',
                aliases: ["bill_optmizer","BILL_OPTMIZER"]
              },
            ]
          }
        }
      ],
      outputs: [
        {
          name: 'Trustly Products',
          description: 'Trustly available or develop Products',
          type_name: 'Custom["TrustlyProducts"]',
          categories: ['product-feature'],
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