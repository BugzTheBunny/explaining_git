# Creating a container with pytho image
FROM python:3.6
# Copying all the files into /app (this folder is created by the container)
COPY . /app

# Making the /app the working direcotory
WORKDIR /app

# From this point, every commend will be executed in /app
# we are installing the packages that we declared in req files
RUN pip install -r requirements.txt

# Exposing PORT 5000, because the flask app uses port 5000
EXPOSE 5000

# Starting the application
ENTRYPOINT ["python"]
CMD ["app.py"]