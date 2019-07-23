FROM node:alpine as builder
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . . 
RUN npm run build


FROM nginx
# tell elasticbeanstalk that port 80 is used
EXPOSE 80 
COPY --from=builder /app/build /usr/share/nginx/html