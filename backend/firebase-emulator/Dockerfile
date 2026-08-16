FROM node:20-alpine

RUN npm install -g firebase-tools

WORKDIR /srv
COPY firebase.json .firebaserc ./

EXPOSE 9099 4000

CMD ["firebase", "emulators:start", "--only", "auth"]
