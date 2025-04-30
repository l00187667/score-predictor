#Please see README file for instructions.
# Use Python 3.8 as the base image
FROM python:3.8

# Set the working directory inside the container
WORKDIR /opt/flask_insurance

# Copy the requirements.txt file to the working directory
COPY requirements.txt .

# Install the necessary Python libraries
RUN pip install --no-cache-dir -r requirements.txt

# Copy all the application files into the working directory
COPY . .

# Expose port 5000 for the Flask app
EXPOSE 5000

# Set the environment variable to indicate the Flask app should run in production mode
ENV FLASK_ENV=production

# Set the default command to run your Flask app
CMD ["python", "flaskapp.py"]
