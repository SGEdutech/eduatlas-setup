#!/bin/sh
mkdir eduatlas && \
cd eduatlas && \
git clone https://github.com/SGEdutech/eduatlas-backend.git && \
git clone https://github.com/SGEdutech/eduatlas-enterprise-backend.git && \
git clone https://github.com/SGEdutech/database-and-auth.git && \
cd eduatlas-backend && \
npm install && \
git clone https://github.com/SGEdutech/eduatlas-frontend.git && \
mv eduatlas-frontend public && \
echo {"SERVER":{"PORT":6868}} > config.json && \
cd ../eduatlas-enterprise-backend && \
git clone https://github.com/SGEdutech/eduatlas-enterprise-frontend.git && \
npm install
mv eduatlas-enterprise-frontend public && \
echo {"SERVER":{"PORT":5500}} > config.json && \
cd ../database-and-auth && \
npm install && \
echo {"MONGO":{"URI":"mongodb://mannvender:goldenstar001@ds127961.mlab.com:27961/atlas"},"COOKIE":{"DOMAIN":"localhost"}} > config.json \
echo "Your EduAtlas project has been set up! Happy coding!"
