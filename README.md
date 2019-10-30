# Pscan Docker

Pscan is a bioinformatics tool useful for the research of motifs (binding sites for transcription factors) known (PWM)   
over-represented in co-regulated or co-expressed gene promoters   

For more info see: [Beacon Lab](http://159.149.160.56/beacon/)    
For the original tool see: [pscan](http://159.149.160.88/pscan/)    

The Dockerfile is written to build a docker image of the pscan tool    
The image is based on centOS 7 and run the tool on Apache/2.4.6    
Once you have downloaded the image, you can run the pscan docker with the minimal command:

*docker run -d -p 8080:80 pscanimage*

The image expose the docker on the port 80, so after running the docker you can access to the graphic interface of pscan by using the host
IP adress
