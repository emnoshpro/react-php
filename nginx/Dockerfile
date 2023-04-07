FROM node:alpine AS frontend

WORKDIR /app
COPY app/package.json .
COPY app/.dockerignore .
COPY app/yarn.lock .
RUN yarn install
COPY app .
RUN yarn run build

FROM nginx:stable-alpine
COPY --from=frontend /app/build /usr/share/nginx/html

EXPOSE 80
