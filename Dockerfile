# Rasa Dockerfile
# Use the official Rasa image
FROM rasa/rasa:latest-full

# Copy any additional files (if you have custom components or code)
COPY . /app

# Set the working directory
WORKDIR /app

# Install any additional dependencies
RUN pip install python 
#--no-cache-dir -r requirements.txt

# Expose the Rasa port
EXPOSE 5005

# Run Rasa server
CMD ["run", "--cors", "*", "--enable-api", "--debug"]
