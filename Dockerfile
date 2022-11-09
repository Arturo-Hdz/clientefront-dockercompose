# FROM nginx:1.17.1-alpine
# COPY /dist/taller-angular /usr/share/nginx/html

FROM node:latest as builder

RUN mkdir -p /app

WORKDIR /app

COPY . .

RUN npm install
RUN npm run build --prod

# CMD ["npm", "start"]

# FROM nginx:1.17.1-alpine
# COPY src/nginx/etc/conf.d/default.conf /etc/nginx/conf/default.conf
# COPY --from=builder app/dist/taller-angular usr/share/nginx/html
