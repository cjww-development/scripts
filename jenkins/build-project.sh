# Build sbt based project

#Print RC version
git_version=$(git describe --tags)
echo "GIT_VERSION $git_version"

# Print dependency updates then compile and test
sbt dependencyUpdates test

# Set build description
GIT_VERSION (.*)'


