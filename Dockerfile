From node:20-alpine

WORKDIR /app

COPY ./package.json ./package.json
COPY ./package-lock.json ./package-lock.json

RUN npm install

COPY . .

# ENV DATABSE_URL=postgresql://postgres:mysecretpassword@localhost:5432/postgres

# RUN npx prisma migrate dev
# removing these two above steps wont need the db connectivity while doing docker build , which stops the hassle of creating postgres container before the build and interaction of it with the app.
RUN npx prisma generate
RUN npm run build


