#!/bin/bash

set -x
source ~/.bashrc

unzip -o /home/qa/qa_server/qa_cms_tmp/ -d /home/wpe-user/sites/qa_server/
cd/home/wpe-user/sites/qa_server//web/app/themes/berg-theme/assets && rm -rf node_modules
cd /home/intrusion/dev.intrusion.eight25sites.com/wp-content/theme/my-theme/ &&  npm run install && npm run build
