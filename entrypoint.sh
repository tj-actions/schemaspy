#!/usr/bin/env bash

set -euo pipefail

INPUT_LICENSE=${INPUT_LICENSE:-false}
INPUT_GRAPHVIZ_DIR=${INPUT_GRAPHVIZ_DIR:-}
INPUT_LOW_QUALITY=${INPUT_LOW_QUALITY:-false}
INPUT_ANOMALIES_LENGTH_CHANGE=${INPUT_ANOMALIES_LENGTH_CHANGE:-false}
INPUT_ANOMALIES_PAGE_LENGTH=${INPUT_ANOMALIES_PAGE_LENGTH:-10}
INPUT_CATALOG=${INPUT_CATALOG:-}
INPUT_CHECK_LENGTH_CHANGE=${INPUT_CHECK_LENGTH_CHANGE:-false}
INPUT_CHECK_PAGE_LENGTH=${INPUT_CHECK_PAGE_LENGTH:-10}
INPUT_COLUMN_LENGTH_CHANGE=${INPUT_COLUMN_LENGTH_CHANGE:-false}
INPUT_COLUMN_PAGE_LENGTH=${INPUT_COLUMN_PAGE_LENGTH:-50}
INPUT_DATABASE_NAME=${INPUT_DATABASE_NAME:-}
INPUT_DATABASE_TYPE=${INPUT_DATABASE_TYPE:-ora}
INPUT_DB_OBJECT_LENGTH_CHANGE=${INPUT_DB_OBJECT_LENGTH_CHANGE:-false}
INPUT_DB_OBJECT_PAGE_LENGTH=${INPUT_DB_OBJECT_PAGE_LENGTH:-50}
INPUT_DEBUG=${INPUT_DEBUG:-false}
INPUT_DEGREE=${INPUT_DEGREE:-2}
INPUT_DRIVER_PATH=${INPUT_DRIVER_PATH:-}
INPUT_FK_LENGTH_CHANGE=${INPUT_FK_LENGTH_CHANGE:-false}
INPUT_FK_PAGE_LENGTH=${INPUT_FK_PAGE_LENGTH:-10}
INPUT_HOST=${INPUT_HOST:-}
INPUT_IMAGE_FORMAT=${INPUT_IMAGE_FORMAT:-png}
INPUT_INDEX_LENGTH_CHANGE=${INPUT_INDEX_LENGTH_CHANGE:-false}
INPUT_INDEX_PAGE_LENGTH=${INPUT_INDEX_PAGE_LENGTH:-10}
INPUT_SCHEMA_META=${INPUT_SCHEMA_META:-}
INPUT_NO_ANOMALIES_PAGING=${INPUT_NO_ANOMALIES_PAGING:-false}
INPUT_NO_CHECK_PAGING=${INPUT_NO_CHECK_PAGING:-false}
INPUT_NO_COLUMN_PAGING=${INPUT_NO_COLUMN_PAGING:-false}
INPUT_NO_DB_OBJECT_PAGING=${INPUT_NO_DB_OBJECT_PAGING:-false}
INPUT_NO_FK_PAGING=${INPUT_NO_FK_PAGING:-false}
INPUT_NO_INDEX_PAGING=${INPUT_NO_INDEX_PAGING:-false}
INPUT_NO_ROUTINE_PAGING=${INPUT_NO_ROUTINE_PAGING:-false}
INPUT_NO_TABLE_PAGING=${INPUT_NO_TABLE_PAGING:-false}
INPUT_NO_HTML=${INPUT_NO_HTML:-false}
INPUT_NO_IMPLIED=${INPUT_NO_IMPLIED:-false}
INPUT_OUTPUT_DIR=${INPUT_OUTPUT_DIR:-docs}
INPUT_PASSWORD=${INPUT_PASSWORD:-}
INPUT_PORT=${INPUT_PORT:-}
INPUT_RENDERER=${INPUT_RENDERER:-}
INPUT_ROUTINE_LENGTH_CHANGE=${INPUT_ROUTINE_LENGTH_CHANGE:-false}
INPUT_ROUTINE_PAGE_LENGTH=${INPUT_ROUTINE_PAGE_LENGTH:-50}
INPUT_SCHEMA=${INPUT_SCHEMA:-}
INPUT_SSO=${INPUT_SSO:-false}
INPUT_TABLE_LENGTH_CHANGE=${INPUT_TABLE_LENGTH_CHANGE:-false}
INPUT_TABLE_PAGE_LENGTH=${INPUT_TABLE_PAGE_LENGTH:-50}
INPUT_USER=${INPUT_USER:-}
INPUT_VIZJS=${INPUT_VIZJS:-false}
INPUT_ALL=${INPUT_ALL:-false}

ARGS=""

if [[ "$INPUT_LICENSE" == "true" ]]; then
  ARGS="$ARGS -l"
fi

if [[ -n "$INPUT_GRAPHVIZ_DIR" ]]; then
  ARGS="$ARGS --graphviz-dir $INPUT_GRAPHVIZ_DIR"
fi

if [[ "$INPUT_LOW_QUALITY" == "true" ]]; then
  ARGS="$ARGS --low-quality"
fi

if [[ "$INPUT_ANOMALIES_LENGTH_CHANGE" == "true" ]]; then
  ARGS="$ARGS --anomaliesLengthChange"
fi

if [[ -n "$INPUT_ANOMALIES_PAGE_LENGTH" ]]; then
  ARGS="$ARGS --anomaliesPageLength $INPUT_ANOMALIES_PAGE_LENGTH"
fi

if [[ -n "$INPUT_CATALOG" ]]; then
  ARGS="$ARGS -cat $INPUT_CATALOG"
fi

if [[ "$INPUT_CHECK_LENGTH_CHANGE" == "true" ]]; then
  ARGS="$ARGS --checkLengthChange"
fi

if [[ -n "$INPUT_CHECK_PAGE_LENGTH" ]]; then
  ARGS="$ARGS --checkPageLength $INPUT_CHECK_PAGE_LENGTH"
fi

if [[ -n "$INPUT_COLUMN_LENGTH_CHANGE" ]]; then
  ARGS="$ARGS --columnLengthChange $INPUT_COLUMN_LENGTH_CHANGE"
fi

if [[ -n "$INPUT_COLUMN_PAGE_LENGTH" ]]; then
  ARGS="$ARGS --columnPageLength $INPUT_COLUMN_PAGE_LENGTH"
fi

if [[ -n "$INPUT_DATABASE_NAME" ]]; then
  ARGS="$ARGS -db $INPUT_DATABASE_NAME"
fi

if [[ -n "$INPUT_DATABASE_TYPE" ]]; then
  ARGS="$ARGS -t $INPUT_DATABASE_TYPE"
fi

if [[ "$INPUT_DB_OBJECT_LENGTH_CHANGE" == "true" ]]; then
  ARGS="$ARGS --dbObjectLengthChange"
fi

if [[ -n "$INPUT_DB_OBJECT_PAGE_LENGTH" ]]; then
  ARGS="$ARGS --dbObjectPageLength $INPUT_DB_OBJECT_PAGE_LENGTH"
fi

if [[ "$INPUT_DEBUG" == "true" ]]; then
  ARGS="$ARGS -debug"
fi

if [[ -n "$INPUT_DEGREE" ]]; then
  ARGS="$ARGS -degree $INPUT_DEGREE"
fi

if [[ -n "$INPUT_DRIVER_PATH" ]]; then
  ARGS="$ARGS --driverPath $INPUT_DRIVER_PATH"
fi

if [[ "$INPUT_FK_LENGTH_CHANGE" == "true" ]]; then
  ARGS="$ARGS --fkLengthChange"
fi

if [[ -n "$INPUT_FK_PAGE_LENGTH" ]]; then
  ARGS="$ARGS --fkPageLength $INPUT_FK_PAGE_LENGTH"
fi

if [[ -n "$INPUT_HOST" ]]; then
  ARGS="$ARGS -host $INPUT_HOST"
fi

if [[ -n "$INPUT_IMAGE_FORMAT" ]]; then
  ARGS="$ARGS --image-format $INPUT_IMAGE_FORMAT"
fi

if [[ "$INPUT_INDEX_LENGTH_CHANGE" == "true" ]]; then
  ARGS="$ARGS --indexLengthChange"
fi

if [[ -n "$INPUT_INDEX_PAGE_LENGTH" ]]; then
  ARGS="$ARGS --indexPageLength $INPUT_INDEX_PAGE_LENGTH"
fi

if [[ -n "$INPUT_SCHEMA_META" ]]; then
  ARGS="$ARGS --schema-meta $INPUT_SCHEMA_META"
fi

if [[ "$INPUT_NO_ANOMALIES_PAGING" == "true" ]]; then
  ARGS="$ARGS --noAnomaliesPaging"
fi

if [[ "$INPUT_NO_CHECK_PAGING" == "true" ]]; then
  ARGS="$ARGS --noCheckPaging"
fi

if [[ "$INPUT_NO_COLUMN_PAGING" == "true" ]]; then
  ARGS="$ARGS --noColumnPaging"
fi

if [[ "$INPUT_NO_DB_OBJECT_PAGING" == "true" ]]; then
  ARGS="$ARGS --noDbObjectPaging"
fi

if [[ "$INPUT_NO_FK_PAGING" == "true" ]]; then
  ARGS="$ARGS --noFkPaging"
fi

if [[ "$INPUT_NO_INDEX_PAGING" == "true" ]]; then
  ARGS="$ARGS --noIndexPaging"
fi

if [[ "$INPUT_NO_ROUTINE_PAGING" == "true" ]]; then
  ARGS="$ARGS --noRoutinePaging"
fi

if [[ "$INPUT_NO_TABLE_PAGING" == "true" ]]; then
  ARGS="$ARGS --noTablePaging"
fi

if [[ "$INPUT_NO_HTML" == "true" ]]; then
  ARGS="$ARGS --no-html"
fi

if [[ "$INPUT_NO_IMPLIED" == "true" ]]; then
  ARGS="$ARGS --no-implied"
fi

if [[ -n "$INPUT_OUTPUT_DIR" ]]; then
  ARGS="$ARGS -o $INPUT_OUTPUT_DIR"
fi

if [[ -n "$INPUT_PORT" ]]; then
  ARGS="$ARGS -port $INPUT_PORT"
fi

if [[ -n "$INPUT_RENDERER" ]]; then
  ARGS="$ARGS --renderer $INPUT_RENDERER"
fi

if [[ "$INPUT_ROUTINE_LENGTH_CHANGE" == "true" ]]; then
  ARGS="$ARGS --routineLengthChange"
fi

if [[ -n "$INPUT_ROUTINE_PAGE_LENGTH" ]]; then
  ARGS="$ARGS --routinePageLength $INPUT_ROUTINE_PAGE_LENGTH"
fi

if [[ -n "$INPUT_SCHEMA" ]]; then
  ARGS="$ARGS --schema $INPUT_SCHEMA"
fi

if [[ "$INPUT_SSO" == "true" ]]; then
  ARGS="$ARGS --sso"
fi

if [[ "$INPUT_TABLE_LENGTH_CHANGE" == "true" ]]; then
  ARGS="$ARGS --tableLengthChange"
fi

if [[ -n "$INPUT_TABLE_PAGE_LENGTH" ]]; then
  ARGS="$ARGS --tablePageLength $INPUT_TABLE_PAGE_LENGTH"
fi

if [[ -n "$INPUT_USER" ]]; then
  ARGS="$ARGS -u $INPUT_USER"
fi

if [[ "$INPUT_VIZJS" == "true" ]]; then
  ARGS="$ARGS --vizjs"
fi

if [[ -n "$INPUT_PASSWORD" ]]; then
  ARGS="$ARGS -p $INPUT_PASSWORD"
fi

if [[ "$INPUT_ALL" == "true" ]]; then
  ARGS="$ARGS -all"
fi

echo "::debug::Running: schemaspy $ARGS"

# shellcheck disable=SC2086
schemaspy ${ARGS}
