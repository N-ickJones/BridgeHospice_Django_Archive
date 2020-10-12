FROM python:3.8.0-slim

# DEV NPM
# RUN apt-get update & apt-get install -y npm

# Environment Variables
ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

# Install Project Requirements
RUN mkdir /app
WORKDIR /app
RUN pip install --upgrade pip
COPY requirements.txt /app
RUN pip install -r requirements.txt

RUN apt-get update && apt-get -y install netcat && apt-get -y install cron

# Source
COPY . /app

# Install Netcat to ensure app start transaction... used in entrypoint.sh
# && apt-get install cron

    # Cron
    # RUN apt-get -y install cron

    # Add booking cron
    # COPY crontabs/booking /etc/cron.d
    # RUN chmod 0644 /etc/cron.d/booking
    # RUN crontab /etc/cron.d/booking

    # Create the log file to be able to run tail
    # RUN touch /var/log/cron.log


# NODE PROD EXAMPLE
# FROM base AS dependencies
# install node packages
# RUN npm set progress=false && npm config set depth 0
# RUN npm install --only=production
# copy production node_modules aside
# RUN cp -R node_modules prod_node_modules
# install ALL node_modules, including 'devDependencies'
# RUN npm install
# COPY --from=dependencies /root/chat/prod_node_modules ./node_modules


# ENTRYPOINT ["/app/entrypoint.sh"]
