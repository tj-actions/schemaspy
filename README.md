[![CI](https://github.com/tj-actions/schemaspy/workflows/CI/badge.svg)](https://github.com/tj-actions/schemaspy/actions?query=workflow%3ACI)
[![Update release version.](https://github.com/tj-actions/schemaspy/workflows/Update%20release%20version./badge.svg)](https://github.com/tj-actions/schemaspy/actions?query=workflow%3A%22Update+release+version.%22)
[![Public workflows that use this action.](https://img.shields.io/endpoint?url=https%3A%2F%2Fused-by.vercel.app%2Fapi%2Fgithub-actions%2Fused-by%3Faction%3Dtj-actions%2Fschemaspy%26badge%3Dtrue)](https://github.com/search?o=desc\&q=tj-actions+schemaspy+path%3A.github%2Fworkflows+language%3AYAML\&s=\&type=Code)

<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->

[![All Contributors](https://img.shields.io/badge/all_contributors-1-orange.svg?style=flat-square)](#contributors-)

<!-- ALL-CONTRIBUTORS-BADGE:END -->

## schemaspy

Run [schemaspy](https://schemaspy.org/) to generate a database schema documentation website.

View example documentation here: https://tj-actions.github.io/schemaspy/

```yaml
...
    steps:
      - uses: actions/checkout@v2
      - name: Run SchemaSpy
        uses: tj-actions/schemaspy@v2
        with:
          host: postgres
          port: 5432
          database_name: testdb
          database_type: pgsql
          user: test_user
          password: test_user_password
          all: true
```

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

```yaml
- uses: tj-actions/schemaspy@v2
  id: schemaspy
  with:
    # Analyze all schemas in the database
    # Type: boolean
    # Default: "false"
    all: ''

    # Whether users can change the page length for anomalies
    # Type: boolean
    # Default: "false"
    anomalies_length_change: ''

    # The DataTables pageLength for anomalies
    # Type: string
    # Default: "10"
    anomalies_page_length: ''

    # Filter using a specific catalog this is usually the 
    # root of the database and contains schemas. 
    # Type: string
    catalog: ''

    # Whether users can change the page length for check 
    # constraints 
    # Type: boolean
    # Default: "false"
    check_length_change: ''

    # The DataTables pageLength for check constraints
    # Type: string
    # Default: "10"
    check_page_length: ''

    # Whether users can change the page length for routines
    # Type: boolean
    # Default: "false"
    column_length_change: ''

    # The DataTables pageLength for routines
    # Type: string
    # Default: "50"
    column_page_length: ''

    # Name of the database to connect to
    # Type: string
    database_name: ''

    # Type of database to connect to
    # Type: string
    # Default: "ora"
    database_type: ''

    # Whether users can change the page length for database 
    # objects 
    # Type: boolean
    # Default: "false"
    db_object_length_change: ''

    # The DataTables pageLength for database objects
    # Type: string
    # Default: "50"
    db_object_page_length: ''

    # Enable debug logging
    # Type: boolean
    # Default: "false"
    debug: ''

    # Limit the degree of separation, allowed values 1 or 
    # 2, defaults to 2 
    # Type: string
    # Default: "2"
    degree: ''

    # Path to look for JDBC drivers overrides driverPath in 
    # [databaseType].properties, supports directory, will add directory and recurse to 
    # add all content. Supports multiple paths using os dependent 
    # pathSeparator. 
    # Type: string
    driver_path: ''

    # Whether users can change the page length for foreign 
    # keys 
    # Type: boolean
    # Default: "false"
    fk_length_change: ''

    # The DataTables pageLength for foreign keys
    # Type: string
    # Default: "10"
    fk_page_length: ''

    # Path to directory containing graphviz bin folder. /bin/dot will 
    # be appended 
    # Type: string
    graphviz_dir: ''

    # Hostname/ip to connect to, if required by databaseType.
    # Type: string
    host: ''

    # The format of the image that gets generated. Supported 
    # formats are svg and png. Defaults to png. 
    # Type: string
    # Default: "png"
    image_format: ''

    # Whether users can change the page length for indexes
    # Type: boolean
    # Default: "false"
    index_length_change: ''

    # The DataTables pageLength for indexes
    # Type: string
    # Default: "10"
    index_page_length: ''

    # Print license, it will first print GPL and then 
    # LGPL (LGPL is addition to GPL) 
    # Type: boolean
    # Default: "false"
    license: ''

    # Try to generate low quality diagrams, depending on renderers/Graphviz 
    # installation might not be available 
    # Type: boolean
    # Default: "false"
    low_quality: ''

    # Whether DataTables for anomalies should have pagination
    # Type: boolean
    # Default: "false"
    no_anomalies_paging: ''

    # Whether DataTables for check constraints should have pagination
    # Type: boolean
    # Default: "false"
    no_check_paging: ''

    # Whether DataTables for routines should have pagination
    # Type: boolean
    # Default: "false"
    no_column_paging: ''

    # Whether DataTables for database objects should have pagination
    # Type: boolean
    # Default: "false"
    no_db_object_paging: ''

    # Whether DataTables for foreign keys should have pagination
    # Type: boolean
    # Default: "false"
    no_fk_paging: ''

    # Skip html generation
    # Type: boolean
    # Default: "false"
    no_html: ''

    # Do not look for implied relationships
    # Type: boolean
    # Default: "false"
    no_implied: ''

    # Whether DataTables for indexes should have pagination
    # Type: boolean
    # Default: "false"
    no_index_paging: ''

    # Whether DataTables for routines should have pagination
    # Type: boolean
    # Default: "false"
    no_routine_paging: ''

    # Whether DataTables for database tables should have pagination
    # Type: boolean
    # Default: "false"
    no_table_paging: ''

    # Directory to place the generated files in
    # Type: string
    # Default: "docs"
    output_dir: ''

    # Password to connect to database, if required by databaseType.
    # Type: string
    password: ''

    # Port that dbms listens to, if required by databaseType.
    # Type: string
    port: ''

    # Specify which renderer to use should be prefixed with 
    # `:`. Example `:cairo` 
    # Type: string
    renderer: ''

    # Whether users can change the page length for routines
    # Type: boolean
    # Default: "false"
    routine_length_change: ''

    # The DataTables pageLength for routines
    # Type: string
    # Default: "50"
    routine_page_length: ''

    # Name of the schema to analyze (defaults to the specified user) 
    # Type: string
    schema: ''

    # Single schema analysis file path to SchemaMeta_xml, when running 
    # `_all` or `_schemas` path to directory containing SchemaMeta_xmls with 
    # pattern (DatabaseName|Schema).meta.xml 
    # Type: string
    schema_meta: ''

    # Use single sign on, if required by databaseType.
    # Type: boolean
    # Default: "false"
    sso: ''

    # Whether users can change the page length for database 
    # tables 
    # Type: boolean
    # Default: "false"
    table_length_change: ''

    # The DataTables pageLength for database tables
    # Type: string
    # Default: "50"
    table_page_length: ''

    # Username to connect with, if required by databaseType.
    # Type: string
    user: ''

    # Use vizjs instead of graphviz
    # Type: boolean
    # Default: "false"
    vizjs: ''

```

<!-- AUTO-DOC-INPUT:END -->

## Using Docker image

### Pulling image from ghcr.io

Run

```shell
docker pull ghcr.io/tj-actions/schemaspy:latest
```

### Running schemaspy locally

> \[!NOTE]
>
> *   The entrypoint is the `entrypoint.sh` script which requires certain environment variables to be set.

### Example usage with environment variables

```shell
docker run -v "$PWD:/docs" -e INPUT_HOST=localhost -e INPUT_PORT=5432 -e INPUT_DATABASE_TYPE=pgsql -e INPUT_USER=test_user -e INPUT_PASSWORD=test_user_password -e INPUT_ALL=true ghcr.io/tj-actions/schemaspy:latest
```

For more information on each environment variable please refer to the [inputs](#inputs). A general rule would be to prefix the environment variable with `INPUT_` and the uppercase of any specific input separated by underscores.

*   Free software: [MIT license](LICENSE)

If you feel generous and want to show some extra appreciation:

[![Buy me a coffee][buymeacoffee-shield]][buymeacoffee]

[buymeacoffee]: https://www.buymeacoffee.com/jackton1

[buymeacoffee-shield]: https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png

## Credits

This package was created with [Cookiecutter](https://github.com/cookiecutter/cookiecutter) using [cookiecutter-action](https://github.com/tj-actions/cookiecutter-action)

## Report Bugs

Report bugs at https://github.com/tj-actions/schemaspy/issues.

If you are reporting a bug, please include:

*   Your operating system name and version.
*   Any details about your workflow that might be helpful in troubleshooting.
*   Detailed steps to reproduce the bug.

## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->

<!-- prettier-ignore-start -->

<!-- markdownlint-disable -->

<table>
  <tbody>
    <tr>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/wschuell"><img src="https://avatars.githubusercontent.com/u/9948008?v=4?s=100" width="100px;" alt="wschuell"/><br /><sub><b>wschuell</b></sub></a><br /><a href="https://github.com/tj-actions/schemaspy/issues?q=author%3Awschuell" title="Bug reports">🐛</a> <a href="https://github.com/tj-actions/schemaspy/commits?author=wschuell" title="Code">💻</a></td>
    </tr>
  </tbody>
</table>

<!-- markdownlint-restore -->

<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!
