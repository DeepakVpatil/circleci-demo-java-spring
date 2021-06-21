#!/bin/bash
wget -qO- https://cli-assets.heroku.com/install-ubuntu.sh | sh

cat > ~/.netrc << EOF
machine api.heroku.com
  login deepak@xtaascorp.com
  password d1410$Leena
machine git.heroku.com
  login deepak@xtaascorp.com
  password d1410$Leena
EOF

heroku git:remote -a $HEROKU_APP
