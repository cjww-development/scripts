
# Parameterised build
# Name: project name
# Project type: type for gitignore

# Create repo on org
curl -i -H 'Authorization: token <token>' -d '{ "name": "'$Name'", "auto_init": true, "private": false, "gitignore_template": "PlayFramework" }' https://api.github.com/orgs/cjww-development/repos

# Create first tag to kick off releases
curl -H "Accept: application/vnd.github.manifold-preview" -H 'Authorization: token <token>' --data '{ "tag_name": "0.1.0", "target_commitish": "master", "name": "0.1.0", "body": "0.1.0 '$Name'", "draft": false, "prerelease": false }' "https://api.github.com/repos/cjww-development/$Name/releases"