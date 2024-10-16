# Rasa Dockerfile
# Use the official Rasa image
FROM python/python:latest-full

# Copy any additional files (if you have custom components or code)
COPY . /app

# Set the working directory
WORKDIR /app

# Install any additional dependencies
#RUN pip install  
#--no-cache-dir -r requirements.txt
RUN apt-get  install python

# Expose the Rasa port
EXPOSE 5005

# Run Rasa server
CMD ["run", "--cors", "*", "--enable-api", "--debug"]
