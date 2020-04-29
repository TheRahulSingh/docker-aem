# docker-aem
Below are the simple steps that enables you to configure the AEM  with docker
* Install Docker on you machine
* Put AEM jar and licence file along with master docker file
* Build the image file => docker build -t aem .
* Once your imgae is created move to author folder and create author image => docker build -t author .
* Use command to start author => docker run -p 4502:4502 author
* Similer you can run you publish as well, follow the above steps
* For publish start => docker run -p 4503:4503 author
