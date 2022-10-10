<h1> NodeJs Dockerfile configuration </h1>


**Build the image locally and run**

## Build the Docker image
`````shell script
docker build -t nodeexample:v1 .
`````

## Start the development server
`````shell script
docker run -d -p 3000:80 -v feedback:/app/feedback -v /app/node_modules -v $(pwd):/app nodeexample:v1
`````
Adding the -v flags ensures the binding of the volumes.
In this case for example, we do have three different volumes conbined, one anonymous - which is the /app/node_modules.
The reason for adding those is to ensure the binding of the volumes an update the code without having to rebuild the image each time.


![alt](https://www.docker.com/wp-content/uploads/2022/03/horizontal-logo-monochromatic-white.png)
