# Use the official Python image from the Docker Hub
FROM python:3.10

# Set the working directory in the container
WORKDIR /app


# Copy the current directory contents into the container at /app
COPY . /app

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y


# Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on
EXPOSE 5001

# Run the application
#CMD ["python", "app.py"]
CMD ["flask", "run"]
