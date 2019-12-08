#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag=machlearning .
# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
# mapping the port 4000 to the container exposed port 80
# You should see a notice that Python is serving your app at
# http://0.0.0.0:80. But that message is coming from inside the container,
# which doesn’t know you mapped to port 80 of that container to 4000,
# making the URL http://localhost:4000
docker run -p 8000:5001 machlearning
