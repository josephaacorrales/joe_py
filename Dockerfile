# Use the official python image from dockerhub
FROM python:3.8.2
# Ensures log messages immediately dumped to the stream/console instead of being buffered
ENV PYTHONBUFFERED=1
# Set working directory in container for following Docker image build instruction
WORKDIR /app
# Copy requirements.txt into container
COPY requirements.txt /app/
# Install dependencies
RUN pip install -r requirements.txt
# Copy the current directory into container (minus files/folders matched by .dockerignore patterns)
COPY . /app
# Run app.py
CMD ["python", "joe.py"]