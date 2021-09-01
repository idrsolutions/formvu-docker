# FormVu Docker Image #

FormVu is a PDF Forms to HTML conversion tool to allow you to convert PDF Forms into standalone HTML with interactive form components. This docker image can be used to containerise FormVu making it accessible via a REST API which is perfect for cloud deployments.

## Getting Started ##

In order to use the FormVu Docker image you will need a license to access the FormVu war file. If you have not got a license yet, you can [sign up for a free trial](https://www.idrsolutions.com/formvu/trial-download).

Once you have the FormVu war file, you can pull and run the docker image with the following commands:
```bash
docker pull idrsolutions/formvu:latest
docker run -p 80:80 --mount "source=/path/to/war/formvu-microservice.war,target=/usr/local/tomcat/webapps/ROOT.war,type=bind" idrsolutions/formvu
```
A full tutorial with additional options can be [found here](https://support.idrsolutions.com/formvu/tutorials/cloud/docker/deploy-formvu-on-docker).

## Building the Image ##

To build the image from source, use the following steps.

- Clone the project from [here](https://github.com/idrsolutions/formvu-docker)
- Navigate to the project directory in a terminal
- Run the following command  
  ```docker build -t idrsolutions/formvu .```

## Documentation ## 

[FormVu Cloud Documentation](https://support.idrsolutions.com/formvu/tutorials/cloud/)
[FormVu Docker Documentation](https://support.idrsolutions.com/formvu/tutorials/cloud/docker)
[Contact IDRsolutions](https://www.idrsolutions.com/contact-us)