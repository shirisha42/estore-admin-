# use offical node image as the base image
FROM node:latest as build 

#set the working directory as app
WORKDIR /usr/local/app

#Add the source code to app
COPY ./ /usr/local/app/

#install the dependencies
RUN npm install --force

#generate the build of the application
RUN npm run build

#use official nginx image as the image
FROM nginx:latest

#copy the build output for nginx contents
COPY --from=build /usr/local/app/dist/admin-dashboard /usr/share/nginx/html

#expose port80
EXPOSE 80