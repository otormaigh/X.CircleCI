#!/usr/bin/env bash
FILE_NAME='keys.gradle'
cd "${0%/*}"

if [ -e "$FILE_NAME" ]; then
    echo "Removing Old $FILE_NAME Dir..."
    rm -rf "$FILE_NAME"
fi

echo "Add keys to $FILE_NAME"
echo "ext {" >> ${FILE_NAME}
echo "    test_value='$TEST_VALUE_ENV_VAR'" >> ${FILE_NAME}
echo "}" >> ${FILE_NAME}