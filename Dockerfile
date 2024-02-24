#use latest official nginx runtime as a base image
FROM nginx:latest
#copy the index.html file into the nginx default public directory
COPY index.html /usr/share/nginx/html/
#expose port 80 to allow external access
EXPOSE 80
#to start nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]