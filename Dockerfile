#Base image
FROM python:3.8

#set the working directory inside the container
WORKDIR /app

#Copy the requirements.txt file
COPY requirements.txt .

#Install the dependencies
RUN pip install -r requirements.txt

#Copy the application code into the container
COPY . .

#Expose the port the flask application running on
EXPOSE 5000

#Run the flask application
CMD ["python","app.py"]