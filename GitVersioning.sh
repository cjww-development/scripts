#!/bin/bash

$Project="PROJECT_NAME"
$Type="major or minor or hotfix"

echo "Versioning project $Project with $Type version"

captured_version=$(git describe --abbrev=0)

echo "Current $Project version is $captured_version"

VERSION_BITS=(${captured_version//./ })

VNUM1=${VERSION_BITS[0]}
VNUM2=${VERSION_BITS[1]}
VNUM3=${VERSION_BITS[2]}

$new_version

if [ "$Type" = "major" ]; then
	new_version="$((VNUM1+1)).0.0"
elif [ "$Type" = "minor" ]; then
	new_version="$VNUM1.$((VNUM2+1)).0"
elif [ "$Type" = "hotfix" ]; then
	new_version="$VNUM1.$VNUM2.$((VNUM3+1))"
else
	echo "Unrecognised inc version"
	exit 1
fi

echo "$Project is now versioned as $new_version"
echo "running command..."

git tag -a $new_version -m "$new_version $Project"
git push origin --tags