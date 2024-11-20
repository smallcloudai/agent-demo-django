# Use the official Python image from the Docker Hub
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Install Django
RUN pip install Django psycopg2-binary

# Copy the rest of the application code into the container
COPY . .

# Expose the port the app runs on
EXPOSE 8000

# Command to run the application
CMD ["sh", "-c", "python manage.py makemigrations blog && python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]
