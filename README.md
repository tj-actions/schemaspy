[![CI](https://github.com/tj-actions/schemaspy/workflows/CI/badge.svg)](https://github.com/tj-actions/schemaspy/actions?query=workflow%3ACI)
[![Update release version.](https://github.com/tj-actions/schemaspy/workflows/Update%20release%20version./badge.svg)](https://github.com/tj-actions/schemaspy/actions?query=workflow%3A%22Update+release+version.%22)
[![Public workflows that use this action.](https://img.shields.io/endpoint?url=https%3A%2F%2Fused-by.vercel.app%2Fapi%2Fgithub-actions%2Fused-by%3Faction%3Dtj-actions%2Fschemaspy%26badge%3Dtrue)](https://github.com/search?o=desc\&q=tj-actions+schemaspy+path%3A.github%2Fworkflows+language%3AYAML\&s=\&type=Code)

## schemaspy

Run [schemaspy](https://schemaspy.org/) to generate a database schema documentation website.

```yaml
...
    steps:
      - uses: actions/checkout@v2
      - name: Run SchemaSpy
        uses: tj-actions/schemaspy@v1
```

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|          INPUT          |  TYPE  | REQUIRED |  DEFAULT   |                                                                                                           DESCRIPTION                                                                                                            |
|-------------------------|--------|----------|------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|           all           | string |  false   | `"false"`  |                                                                                              Analyze all schemas in the<br>database                                                                                              |
| anomalies\_length\_change | string |  false   | `"false"`  |                                                                                    Whether users can change the<br>page length for anomalies                                                                                     |
|  anomalies\_page\_length  | string |  false   |   `"10"`   |                                                                                           The DataTables pageLength for anomalies<br>                                                                                            |
|         catalog         | string |  false   |            |                                                             Filter using a specific catalog<br>this is usually the root<br>of the database and contains<br>schemas.                                                              |
|   check\_length\_change   | string |  false   | `"false"`  |                                                                              Whether users can change the<br>page length for check constraints<br>                                                                               |
|    check\_page\_length    | string |  false   |   `"10"`   |                                                                                        The DataTables pageLength for check<br>constraints                                                                                        |
|  column\_length\_change   | string |  false   | `"false"`  |                                                                                     Whether users can change the<br>page length for routines                                                                                     |
|   column\_page\_length    | string |  false   |   `"50"`   |                                                                                            The DataTables pageLength for routines<br>                                                                                            |
|      database\_name      | string |  false   |            |                                                                                              Name of the database to<br>connect to                                                                                               |
|      database\_type      | string |  false   |  `"ora"`   |                                                                                                Type of database to connect<br>to                                                                                                 |
| db\_object\_length\_change | string |  false   | `"false"`  |                                                                               Whether users can change the<br>page length for database objects<br>                                                                               |
|  db\_object\_page\_length  | string |  false   |   `"50"`   |                                                                                        The DataTables pageLength for database<br>objects                                                                                         |
|          debug          | string |  false   | `"false"`  |                                                                                                       Enable debug logging                                                                                                       |
|         degree          | string |  false   |   `"2"`    |                                                                            Limit the degree of separation,<br>allowed values 1 or 2,<br>defaults to 2                                                                            |
|       driver\_path       | string |  false   |            | Path to look for JDBC<br>drivers overrides driverPath in \[databaseType].properties,<br>supports directory, will add directory<br>and recurse to add all<br>content. Supports multiple paths using<br>os dependent pathSeparator. |
|    fk\_length\_change     | string |  false   | `"false"`  |                                                                                 Whether users can change the<br>page length for foreign keys<br>                                                                                 |
|     fk\_page\_length      | string |  false   |   `"10"`   |                                                                                          The DataTables pageLength for foreign<br>keys                                                                                           |
|      graphviz\_dir       | string |  false   |            |                                                                        Path to directory containing graphviz<br>bin folder. /bin/dot will be<br>appended                                                                         |
|          host           | string |  false   |            |                                                                                    Hostname/ip to connect to, if<br>required by databaseType.                                                                                    |
|      image\_format       | string |  false   |  `"png"`   |                                                            The format of the image<br>that gets generated. Supported formats<br>are svg and png. Defaults<br>to png.                                                             |
|   index\_length\_change   | string |  false   | `"false"`  |                                                                                     Whether users can change the<br>page length for indexes                                                                                      |
|    index\_page\_length    | string |  false   |   `"10"`   |                                                                                            The DataTables pageLength for indexes<br>                                                                                             |
|         license         | string |  false   | `"false"`  |                                                                     Print license, it will first<br>print GPL and then LGPL<br>(LGPL is addition to GPL)<br>                                                                     |
|       low\_quality       | string |  false   | `"false"`  |                                                         Try to generate low quality<br>diagrams, depending on renderers/Graphviz installation<br>might not be available                                                          |
|   no\_anomalies\_paging   | string |  false   | `"false"`  |                                                                                    Whether DataTables for anomalies should<br>have pagination                                                                                    |
|     no\_check\_paging     | string |  false   | `"false"`  |                                                                                Whether DataTables for check constraints<br>should have pagination                                                                                |
|    no\_column\_paging     | string |  false   | `"false"`  |                                                                                    Whether DataTables for routines should<br>have pagination                                                                                     |
|   no\_db\_object\_paging   | string |  false   | `"false"`  |                                                                                Whether DataTables for database objects<br>should have pagination                                                                                 |
|      no\_fk\_paging       | string |  false   | `"false"`  |                                                                                  Whether DataTables for foreign keys<br>should have pagination                                                                                   |
|         no\_html         | string |  false   | `"false"`  |                                                                                                       Skip html generation                                                                                                       |
|       no\_implied        | string |  false   | `"false"`  |                                                                                             Do not look for implied<br>relationships                                                                                             |
|     no\_index\_paging     | string |  false   | `"false"`  |                                                                                     Whether DataTables for indexes should<br>have pagination                                                                                     |
|    no\_routine\_paging    | string |  false   | `"false"`  |                                                                                    Whether DataTables for routines should<br>have pagination                                                                                     |
|     no\_table\_paging     | string |  false   | `"false"`  |                                                                                 Whether DataTables for database tables<br>should have pagination                                                                                 |
|       output\_dir        | string |  false   | `"output"` |                                                                                           Directory to place the generated<br>files in                                                                                           |
|        password         | string |  false   |            |                                                                                 Password to connect to database,<br>if required by databaseType.                                                                                 |
|          port           | string |  false   |            |                                                                                    Port that dbms listens to,<br>if required by databaseType.                                                                                    |
|        renderer         | string |  false   |            |                                                                        Specify which renderer to use<br>should be prefixed with `:`.<br>Example `:cairo`                                                                         |
|  routine\_length\_change  | string |  false   | `"false"`  |                                                                                     Whether users can change the<br>page length for routines                                                                                     |
|   routine\_page\_length   | string |  false   |   `"50"`   |                                                                                            The DataTables pageLength for routines<br>                                                                                            |
|         schema          | string |  false   |            |                                                                               Name of the schema to<br>analyze (defaults to the specified<br>user)                                                                               |
|       schema\_meta       | string |  false   | `"false"`  |                   Single schema analysis file path<br>to SchemaMeta\_xml, when running `_all`<br>or `_schemas` path to directory<br>containing SchemaMeta\_xmls with pattern (DatabaseName|Schema).meta.xml<br>                    |
|           sso           | string |  false   | `"false"`  |                                                                                       Use single sign on, if<br>required by databaseType.                                                                                        |
|   table\_length\_change   | string |  false   | `"false"`  |                                                                               Whether users can change the<br>page length for database tables<br>                                                                                |
|    table\_page\_length    | string |  false   |   `"50"`   |                                                                                         The DataTables pageLength for database<br>tables                                                                                         |
|          user           | string |  false   |            |                                                                                    Username to connect with, if<br>required by databaseType.                                                                                     |
|          vizjs          | string |  false   | `"false"`  |                                                                                                Use vizjs instead of graphviz<br>                                                                                                 |

<!-- AUTO-DOC-INPUT:END -->

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
