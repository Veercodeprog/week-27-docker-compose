## Manual installation

- Install nodejs locally
- clone the repo
- Install teh dependencies (npm i)
- Start the db locally
  - docker run -d -p 5432:5432 -e POSTGRES_PASSWORD=mysecretpassword postgres
  - or use neon.tech to get the new DB
- change the .env file to update your db credentials
- npx prisma migrate dev
- npx prisma generate
- npm run build
- npm run start

## Docker Installtion

## Docker Compose Installtion steps
