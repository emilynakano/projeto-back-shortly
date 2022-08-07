CREATE DATABASE "shortly";
CREATE TABLE "users"(
    "id" SERIAL PRIMARY KEY NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT UNIQUE NOT NULL,
    "password" TEXT NOT NULL,
    "createdAt" DATE DEFAULT NOW()
);
CREATE TABLE "sessions"(
    "id" SERIAL PRIMARY KEY NOT NULL,
    "userId" INTEGER NOT NULL REFERENCES users(id),
    "token" TEXT NOT NULL,
    "createdAt" DATE DEFAULT NOW()
);
CREATE TABLE "shortenedUrls"(
    "id" SERIAL PRIMARY KEY NOT NULL,
    "shortUrl" TEXT NOT NULL,
    "url" TEXT NOT NULL,
    "userId" INTEGER NOT NULL REFERENCES users(id),
    "visitCount" INTEGER DEFAULT 0,
    "createdAt" DATE DEFAULT NOW()
);
