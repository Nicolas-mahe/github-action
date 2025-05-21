# Use official Python image as base
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy project files
COPY ./app .

# Set environment(s) variable(s)
ENV DEBUG="True"

# Install python dependencies
RUN pip install -r requirements.txt

# Make the script executable
RUN chmod +x entrypoint.sh

# Expose necessary ports
EXPOSE 5000

# Set the script as entry point
ENTRYPOINT ["./entrypoint.sh"]
