#!/bin/bash

# Check changed files

# not yet executable
# look into `travis_terminate` to stop a travis build from continuing to execute following stages
# https://medium.com/@manjula.cse/how-to-stop-the-execution-of-travis-pipeline-if-script-exits-with-an-error-f0e5a43206bf
# echo "No content yet in travis-bouncer.sh"

#print to logs checken, exit code
if [ -z $(git diff --name-only --diff-filter=d $TRAVIS_COMMIT_RANGE | grep -v "\.md$") ]
then
  echo "Only Markdown files were modified, skipping CI run."
  exit
fi

exit 0
