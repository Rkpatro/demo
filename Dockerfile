# Rasa Dockerfile
# Use the official Rasa image
FROM rasa/rasa:latest-full

# Copy any additional files (if you have custom components or code)
COPY . /app

# Set the working directory
WORKDIR /app


# Expose the Rasa port
EXPOSE 5005

# Run Rasa server
CMD ["run", "--cors", "*", "--enable-api", "--debug"]
