FROM python:3.11.3-slim-buster

SHELL ["/bin/bash", "-c"]

# Install required packages
RUN apt update && apt install -y git

# Set the working directory
WORKDIR /app

# Clone the Git repository
RUN git clone 'https://github.com/otuva/handwriting-synthesis' .

# Set up the Python environment
# RUN python -m venv venv && \
#     source venv/bin/activate

# Install Python dependencies
# RUN pip install --no-cache-dir -r requirements.txt
RUN pip install -r requirements.txt

# delete for custom entrypoint
RUN rm main.py

# run main.py
# CMD ["python", "main.py"]
