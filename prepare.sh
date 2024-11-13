#!/bin/sh

CURRENT_VERSION="$(cat /usr/local/lib/schemaspy/version.txt)"
EXPECTED_VERSION="${SCHEMASPY_GROUP_ID}:${SCHEMASPY_ARTIFACT_ID}:${SCHEMASPY_VERSION}"

if [ "X${AVAILABLE_VERSION}" != "X${EXPECTED_VERSION}" ];
then
  echo "Downloading SchemaSpy artifact from Maven central (expected: ${EXPECTED_VERSION}, current: ${CURRENT_VERSION})..."
  curl -JL https://search.maven.org/remotecontent?filepath=$( echo -n $SCHEMASPY_GROUP_ID | sed s/"\."/"\/"/g )/$SCHEMASPY_ARTIFACT_ID/$SCHEMASPY_VERSION/$SCHEMASPY_ARTIFACT_ID-$SCHEMASPY_VERSION$( echo -n "-$SCHEMASPY_CLASSIFIER" | sed s/"^-$"//).jar --output /usr/local/lib/schemaspy/schemaspy.jar
fi
