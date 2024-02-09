# Base image
FROM alpine:3.9

# Metadata
LABEL maintainer="name@example.com"

# Environment variables
ENV APP_HOME /app
ENV CONFIG_FILE config.yml

# Install dependencies
RUN apk add --update \
  python3 \
  py3-pip

# Set working directory
WORKDIR $APP_HOME

# Copy source code
COPY . .

# Install app dependencies
RUN pip3 install -r requirements.txt

# Expose port
EXPOSE 5000:5000

# Entrypoint
ENTRYPOINT ["python", "app.py"]
