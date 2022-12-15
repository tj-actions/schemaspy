[![CI](https://github.com/tj-actions/schemaspy/workflows/CI/badge.svg)](https://github.com/tj-actions/schemaspy/actions?query=workflow%3ACI)
[![Update release version.](https://github.com/tj-actions/schemaspy/workflows/Update%20release%20version./badge.svg)](https://github.com/tj-actions/schemaspy/actions?query=workflow%3A%22Update+release+version.%22)
[![Public workflows that use this action.](https://img.shields.io/endpoint?url=https%3A%2F%2Fused-by.vercel.app%2Fapi%2Fgithub-actions%2Fused-by%3Faction%3Dtj-actions%2Fschemaspy%26badge%3Dtrue)](https://github.com/search?o=desc\&q=tj-actions+schemaspy+path%3A.github%2Fworkflows+language%3AYAML\&s=\&type=Code)

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

|          INPUT          |  TYPE  | REQUIRED |  DEFAULT  |                                                                                                          DESCRIPTION                                                                                                           |
|-------------------------|--------|----------|-----------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|           all           | string |  false   | `"false"` |                                                                                              Analyze all schemas in the database                                                                                               |
| anomalies\_length\_change | string |  false   | `"false"` |                                                                                   Whether users can change the page length<br>for anomalies                                                                                    |
|  anomalies\_page\_length  | string |  false   |  `"10"`   |                                                                                            The DataTables pageLength for anomalies                                                                                             |
|         catalog         | string |  false   |           |                                                              Filter using a specific catalog this is<br>usually the root of the database and<br>contains schemas.                                                              |
|   check\_length\_change   | string |  false   | `"false"` |                                                                               Whether users can change the page length<br>for check constraints                                                                                |
|    check\_page\_length    | string |  false   |  `"10"`   |                                                                                        The DataTables pageLength for check constraints                                                                                         |
|  column\_length\_change   | string |  false   | `"false"` |                                                                                    Whether users can change the page length<br>for routines                                                                                    |
|   column\_page\_length    | string |  false   |  `"50"`   |                                                                                             The DataTables pageLength for routines                                                                                             |
|      database\_name      | string |  false   |           |                                                                                             Name of the database to connect to<br>                                                                                             |
|      database\_type      | string |  false   |  `"ora"`  |                                                                                                 Type of database to connect to                                                                                                 |
| db\_object\_length\_change | string |  false   | `"false"` |                                                                                Whether users can change the page length<br>for database objects                                                                                |
|  db\_object\_page\_length  | string |  false   |  `"50"`   |                                                                                         The DataTables pageLength for database objects                                                                                         |
|          debug          | string |  false   | `"false"` |                                                                                                      Enable debug logging                                                                                                      |
|         degree          | string |  false   |   `"2"`   |                                                                            Limit the degree of separation, allowed values<br>1 or 2, defaults to 2                                                                             |
|       driver\_path       | string |  false   |           | Path to look for JDBC drivers overrides<br>driverPath in \[databaseType].properties, supports directory, will add<br>directory and recurse to add all content.<br>Supports multiple paths using os dependent pathSeparator.<br> |
|    fk\_length\_change     | string |  false   | `"false"` |                                                                                  Whether users can change the page length<br>for foreign keys                                                                                  |
|     fk\_page\_length      | string |  false   |  `"10"`   |                                                                                           The DataTables pageLength for foreign keys                                                                                           |
|      graphviz\_dir       | string |  false   |           |                                                                         Path to directory containing graphviz bin folder.<br>/bin/dot will be appended                                                                         |
|          host           | string |  false   |           |                                                                                   Hostname/ip to connect to, if required by<br>databaseType.                                                                                   |
|      image\_format       | string |  false   |  `"png"`  |                                                             The format of the image that gets<br>generated. Supported formats are svg and png.<br>Defaults to png.                                                             |
|   index\_length\_change   | string |  false   | `"false"` |                                                                                    Whether users can change the page length<br>for indexes                                                                                     |
|    index\_page\_length    | string |  false   |  `"10"`   |                                                                                             The DataTables pageLength for indexes                                                                                              |
|         license         | string |  false   | `"false"` |                                                                      Print license, it will first print GPL<br>and then LGPL (LGPL is addition to<br>GPL)                                                                      |
|       low\_quality       | string |  false   | `"false"` |                                                        Try to generate low quality diagrams, depending<br>on renderers/Graphviz installation might not be available<br>                                                        |
|   no\_anomalies\_paging   | string |  false   | `"false"` |                                                                                  Whether DataTables for anomalies should have pagination<br>                                                                                   |
|     no\_check\_paging     | string |  false   | `"false"` |                                                                               Whether DataTables for check constraints should have<br>pagination                                                                               |
|    no\_column\_paging     | string |  false   | `"false"` |                                                                                   Whether DataTables for routines should have pagination<br>                                                                                   |
|   no\_db\_object\_paging   | string |  false   | `"false"` |                                                                               Whether DataTables for database objects should have<br>pagination                                                                                |
|      no\_fk\_paging       | string |  false   | `"false"` |                                                                                 Whether DataTables for foreign keys should have<br>pagination                                                                                  |
|         no\_html         | string |  false   | `"false"` |                                                                                                      Skip html generation                                                                                                      |
|       no\_implied        | string |  false   | `"false"` |                                                                                             Do not look for implied relationships                                                                                              |
|     no\_index\_paging     | string |  false   | `"false"` |                                                                                   Whether DataTables for indexes should have pagination<br>                                                                                    |
|    no\_routine\_paging    | string |  false   | `"false"` |                                                                                   Whether DataTables for routines should have pagination<br>                                                                                   |
|     no\_table\_paging     | string |  false   | `"false"` |                                                                                Whether DataTables for database tables should have<br>pagination                                                                                |
|       output\_dir        | string |  false   | `"docs"`  |                                                                                         Directory to place the generated files in<br>                                                                                          |
|        password         | string |  false   |           |                                                                                Password to connect to database, if required<br>by databaseType.                                                                                |
|          port           | string |  false   |           |                                                                                   Port that dbms listens to, if required<br>by databaseType.                                                                                   |
|        renderer         | string |  false   |           |                                                                         Specify which renderer to use should be<br>prefixed with `:`. Example `:cairo`                                                                         |
|  routine\_length\_change  | string |  false   | `"false"` |                                                                                    Whether users can change the page length<br>for routines                                                                                    |
|   routine\_page\_length   | string |  false   |  `"50"`   |                                                                                             The DataTables pageLength for routines                                                                                             |
|         schema          | string |  false   |           |                                                                               Name of the schema to analyze (defaults<br>to the specified user)                                                                                |
|       schema\_meta       | string |  false   |           |                      Single schema analysis file path to SchemaMeta\_xml,<br>when running `_all` or `_schemas` path to<br>directory containing SchemaMeta\_xmls with pattern (DatabaseName|Schema).meta.xml                      |
|           sso           | string |  false   | `"false"` |                                                                                      Use single sign on, if required by<br>databaseType.                                                                                       |
|   table\_length\_change   | string |  false   | `"false"` |                                                                                Whether users can change the page length<br>for database tables                                                                                 |
|    table\_page\_length    | string |  false   |  `"50"`   |                                                                                         The DataTables pageLength for database tables                                                                                          |
|          user           | string |  false   |           |                                                                                   Username to connect with, if required by<br>databaseType.                                                                                    |
|          vizjs          | string |  false   | `"false"` |                                                                                                 Use vizjs instead of graphviz                                                                                                  |

<!-- AUTO-DOC-INPUT:END -->

## Using Docker image

### Pulling image from ghcr.io

Run

```shell
docker pull ghcr.io/tj-actions/schemaspy:latest
```

### Running schemaspy locally

> NOTE: The entrypoint is the `entrypoint.sh` script which requires certain environment variables to be set.

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
