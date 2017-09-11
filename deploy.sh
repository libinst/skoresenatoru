#!/bin/bash
set -eu

# TODO: quick hack until we deploy to different hosts for staging/prod
if [[ ! $CI_BUILD_REF_NAME = 'staging' ]]; then
    exit 0
fi

SSH_KEYFILE="$CI_PROJECT_DIR/.ssh_key"
SSH_WRAPPER="$CI_PROJECT_DIR/.ssh_wrapper"

echo "$oii_rsa" > $SSH_KEYFILE
chmod 0600 $SSH_KEYFILE

# maddening. GIT_SSH_COMMAND only in 2.3.0
cat > $SSH_WRAPPER<<EOF
#!/bin/bash
ssh -i $SSH_KEYFILE \$@
EOF
chmod +x $SSH_WRAPPER

export GIT_SSH=$SSH_WRAPPER

git config --global user.email $GH_EMAIL
git config --global user.name $GH_USERNAME

cd $CI_PROJECT_DIR/_site
cp $CI_PROJECT_DIR/CNAME .
git init
git remote add github git@github.com:openintegrity/openintegrity.org.git || true
mkdir ~/.ssh || true
ssh-keyscan -H github.com >> ~/.ssh/known_hosts
chmod -R 0600 ~/.ssh
git fetch github
git reset github/gh-pages
touch .nojekyll
git add -A .
git commit -a -m "Build $CI_BUILD_ID from GitLab-CI" --allow-empty
git push github HEAD:gh-pages
