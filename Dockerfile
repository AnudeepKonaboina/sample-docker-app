FROM python:3.10-slim
LABEL authors="anudeep.konaboina"

# Set the working directory
WORKDIR /app

# Copy the requirements and application files
COPY app.py /app

# Install Flask
RUN pip install flask

# Expose the port Flask runs on
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]

ENTRYPOINT ["top", "-b"]