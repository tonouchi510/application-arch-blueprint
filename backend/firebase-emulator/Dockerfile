FROM node:20-alpine

RUN npm install -g firebase-tools

WORKDIR /srv
COPY firebase.json .firebaserc ./
COPY backend/firebase-emulator/seed-data ./seed-data

EXPOSE 9099 4000

CMD ["firebase", "emulators:start", "--only", "auth", "--import=./seed-data"]
