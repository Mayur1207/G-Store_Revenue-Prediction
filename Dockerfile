FROM frolvlad/alpine-python-machinelearning

WORKDIR /app

COPY . /app

# Install system dependencies
RUN apk update && apk add --no-cache \
    build-base \
    libffi-dev \
    bash \
    gcc \
    musl-dev \
    libxml2-dev \
    libxslt-dev \
    py3-pip

# Upgrade pip and setuptools
RUN pip install --upgrade pip setuptools

# Log current Python and pip versions
RUN python --version
RUN pip --version

# Install Python dependencies and log the output
RUN pip install --no-cache-dir -r requirements.txt

# Run the application
CMD ["python", "app.py"]
