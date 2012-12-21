#!/bin/sh
PROFILE_NAME="TEST"
PROFILE_PARENT="Chrome-TEST"
GOOGLE_CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
USER_DIR="/Users/$USER/Library/Application Support/Google/${PROFILE_PARENT}"
exec "$GOOGLE_CHROME" \
  --enable-udd-profiles --user-data-dir="$USER_DIR" \
  --profile-directory="$PROFILE_NAME" \
  --no-first-run \
  --no-default-browser-check \
  --enable-extension-activity-logging \
  --enable-extension-activity-ui \
  --load-extension=web
EOF
