# Hello Worlds

# User Python
FROM python:3.9.2

# Define work directory
WORKDIR /python-app

# Copy <source> <destination>
COPY . .

# Install dependencies
RUN pip3 install -r requirements.txt

# Run Port Number
EXPOSE 8000

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0", "--port=8000"]