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

|                                                 INPUT                                                 |  TYPE  | REQUIRED |  DEFAULT  |                                                                                                              DESCRIPTION                                                                                                               |
|-------------------------------------------------------------------------------------------------------|--------|----------|-----------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|                               <a name="input_all"></a>[all](#input_all)                               | string |  false   | `"false"` |                                                                                                Analyze all schemas in the <br>database                                                                                                 |
| <a name="input_anomalies_length_change"></a>[anomalies\_length\_change](#input_anomalies_length_change) | string |  false   | `"false"` |                                                                                      Whether users can change the <br>page length for anomalies                                                                                        |
|    <a name="input_anomalies_page_length"></a>[anomalies\_page\_length](#input_anomalies_page_length)    | string |  false   |  `"10"`   |                                                                                                The DataTables pageLength for anomalies                                                                                                 |
|                         <a name="input_catalog"></a>[catalog](#input_catalog)                         | string |  false   |           |                                                              Filter using a specific catalog <br>this is usually the root <br>of the database and contains <br>schemas.                                                                |
|       <a name="input_check_length_change"></a>[check\_length\_change](#input_check_length_change)       | string |  false   | `"false"` |                                                                                  Whether users can change the <br>page length for check constraints                                                                                    |
|          <a name="input_check_page_length"></a>[check\_page\_length](#input_check_page_length)          | string |  false   |  `"10"`   |                                                                                          The DataTables pageLength for check <br>constraints                                                                                           |
|     <a name="input_column_length_change"></a>[column\_length\_change](#input_column_length_change)      | string |  false   | `"false"` |                                                                                       Whether users can change the <br>page length for routines                                                                                        |
|        <a name="input_column_page_length"></a>[column\_page\_length](#input_column_page_length)         | string |  false   |  `"50"`   |                                                                                                 The DataTables pageLength for routines                                                                                                 |
|                <a name="input_database_name"></a>[database\_name](#input_database_name)                | string |  false   |           |                                                                                                Name of the database to <br>connect to                                                                                                  |
|                <a name="input_database_type"></a>[database\_type](#input_database_type)                | string |  false   |  `"ora"`  |                                                                                                  Type of database to connect <br>to                                                                                                    |
| <a name="input_db_object_length_change"></a>[db\_object\_length\_change](#input_db_object_length_change) | string |  false   | `"false"` |                                                                                   Whether users can change the <br>page length for database objects                                                                                    |
|    <a name="input_db_object_page_length"></a>[db\_object\_page\_length](#input_db_object_page_length)    | string |  false   |  `"50"`   |                                                                                          The DataTables pageLength for database <br>objects                                                                                            |
|                            <a name="input_debug"></a>[debug](#input_debug)                            | string |  false   | `"false"` |                                                                                                          Enable debug logging                                                                                                          |
|                          <a name="input_degree"></a>[degree](#input_degree)                           | string |  false   |   `"2"`   |                                                                             Limit the degree of separation, <br>allowed values 1 or 2, <br>defaults to 2                                                                               |
|                   <a name="input_driver_path"></a>[driver\_path](#input_driver_path)                   | string |  false   |           | Path to look for JDBC <br>drivers overrides driverPath in \[databaseType].properties, <br>supports directory, will add directory <br>and recurse to add all <br>content. Supports multiple paths using <br>os dependent pathSeparator.  |
|           <a name="input_fk_length_change"></a>[fk\_length\_change](#input_fk_length_change)            | string |  false   | `"false"` |                                                                                     Whether users can change the <br>page length for foreign keys                                                                                      |
|              <a name="input_fk_page_length"></a>[fk\_page\_length](#input_fk_page_length)               | string |  false   |  `"10"`   |                                                                                            The DataTables pageLength for foreign <br>keys                                                                                              |
|                 <a name="input_graphviz_dir"></a>[graphviz\_dir](#input_graphviz_dir)                  | string |  false   |           |                                                                          Path to directory containing graphviz <br>bin folder. /bin/dot will be <br>appended                                                                           |
|                             <a name="input_host"></a>[host](#input_host)                              | string |  false   |           |                                                                                      Hostname/ip to connect to, if <br>required by databaseType.                                                                                       |
|                 <a name="input_image_format"></a>[image\_format](#input_image_format)                  | string |  false   |  `"png"`  |                                                             The format of the image <br>that gets generated. Supported formats <br>are svg and png. Defaults <br>to png.                                                               |
|       <a name="input_index_length_change"></a>[index\_length\_change](#input_index_length_change)       | string |  false   | `"false"` |                                                                                       Whether users can change the <br>page length for indexes                                                                                         |
|          <a name="input_index_page_length"></a>[index\_page\_length](#input_index_page_length)          | string |  false   |  `"10"`   |                                                                                                 The DataTables pageLength for indexes                                                                                                  |
|                         <a name="input_license"></a>[license](#input_license)                         | string |  false   | `"false"` |                                                                        Print license, it will first <br>print GPL and then LGPL <br>(LGPL is addition to GPL)                                                                          |
|                   <a name="input_low_quality"></a>[low\_quality](#input_low_quality)                   | string |  false   | `"false"` |                                                           Try to generate low quality <br>diagrams, depending on renderers/Graphviz installation <br>might not be available                                                            |
|       <a name="input_no_anomalies_paging"></a>[no\_anomalies\_paging](#input_no_anomalies_paging)       | string |  false   | `"false"` |                                                                                      Whether DataTables for anomalies should <br>have pagination                                                                                       |
|             <a name="input_no_check_paging"></a>[no\_check\_paging](#input_no_check_paging)             | string |  false   | `"false"` |                                                                                  Whether DataTables for check constraints <br>should have pagination                                                                                   |
|           <a name="input_no_column_paging"></a>[no\_column\_paging](#input_no_column_paging)            | string |  false   | `"false"` |                                                                                      Whether DataTables for routines should <br>have pagination                                                                                        |
|       <a name="input_no_db_object_paging"></a>[no\_db\_object\_paging](#input_no_db_object_paging)       | string |  false   | `"false"` |                                                                                  Whether DataTables for database objects <br>should have pagination                                                                                    |
|                 <a name="input_no_fk_paging"></a>[no\_fk\_paging](#input_no_fk_paging)                  | string |  false   | `"false"` |                                                                                    Whether DataTables for foreign keys <br>should have pagination                                                                                      |
|                         <a name="input_no_html"></a>[no\_html](#input_no_html)                         | string |  false   | `"false"` |                                                                                                          Skip html generation                                                                                                          |
|                    <a name="input_no_implied"></a>[no\_implied](#input_no_implied)                     | string |  false   | `"false"` |                                                                                               Do not look for implied <br>relationships                                                                                                |
|             <a name="input_no_index_paging"></a>[no\_index\_paging](#input_no_index_paging)             | string |  false   | `"false"` |                                                                                       Whether DataTables for indexes should <br>have pagination                                                                                        |
|          <a name="input_no_routine_paging"></a>[no\_routine\_paging](#input_no_routine_paging)          | string |  false   | `"false"` |                                                                                      Whether DataTables for routines should <br>have pagination                                                                                        |
|             <a name="input_no_table_paging"></a>[no\_table\_paging](#input_no_table_paging)             | string |  false   | `"false"` |                                                                                   Whether DataTables for database tables <br>should have pagination                                                                                    |
|                    <a name="input_output_dir"></a>[output\_dir](#input_output_dir)                     | string |  false   | `"docs"`  |                                                                                             Directory to place the generated <br>files in                                                                                              |
|                       <a name="input_password"></a>[password](#input_password)                        | string |  false   |           |                                                                                   Password to connect to database, <br>if required by databaseType.                                                                                    |
|                             <a name="input_port"></a>[port](#input_port)                              | string |  false   |           |                                                                                      Port that dbms listens to, <br>if required by databaseType.                                                                                       |
|                       <a name="input_renderer"></a>[renderer](#input_renderer)                        | string |  false   |           |                                                                          Specify which renderer to use <br>should be prefixed with `:`. <br>Example `:cairo`                                                                           |
|    <a name="input_routine_length_change"></a>[routine\_length\_change](#input_routine_length_change)    | string |  false   | `"false"` |                                                                                       Whether users can change the <br>page length for routines                                                                                        |
|       <a name="input_routine_page_length"></a>[routine\_page\_length](#input_routine_page_length)       | string |  false   |  `"50"`   |                                                                                                 The DataTables pageLength for routines                                                                                                 |
|                          <a name="input_schema"></a>[schema](#input_schema)                           | string |  false   |           |                                                                                  Name of the schema to <br>analyze (defaults to the specified user)                                                                                    |
|                   <a name="input_schema_meta"></a>[schema\_meta](#input_schema_meta)                   | string |  false   |           |                      Single schema analysis file path <br>to SchemaMeta\_xml, when running `_all` <br>or `_schemas` path to directory <br>containing SchemaMeta\_xmls with pattern (DatabaseName|Schema).meta.xml                        |
|                               <a name="input_sso"></a>[sso](#input_sso)                               | string |  false   | `"false"` |                                                                                         Use single sign on, if <br>required by databaseType.                                                                                           |
|       <a name="input_table_length_change"></a>[table\_length\_change](#input_table_length_change)       | string |  false   | `"false"` |                                                                                   Whether users can change the <br>page length for database tables                                                                                     |
|          <a name="input_table_page_length"></a>[table\_page\_length](#input_table_page_length)          | string |  false   |  `"50"`   |                                                                                           The DataTables pageLength for database <br>tables                                                                                            |
|                             <a name="input_user"></a>[user](#input_user)                              | string |  false   |           |                                                                                      Username to connect with, if <br>required by databaseType.                                                                                        |
|                            <a name="input_vizjs"></a>[vizjs](#input_vizjs)                            | string |  false   | `"false"` |                                                                                                     Use vizjs instead of graphviz                                                                                                      |

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
