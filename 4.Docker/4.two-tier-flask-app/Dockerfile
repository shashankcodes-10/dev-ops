#SIMPLE DOCKER IMAGE ///////////////////////////////////////////////////////////////////////////////////////////////////////

# FROM python:3.9-slim

# WORKDIR /app


# RUN apt-get update \
#    &&  apt-get upgrade -y\
#    &&  apt-get install -y gcc default-libmysqlclient-dev pkg-config\
#    &&    rm -rf /var/lib/apt/lists/*


# COPY requirements.txt .

# RUN pip install  --no-cache-dir -r requirements.txt

# COPY . .

# EXPOSE 5000

# CMD ["python","app.py"]

#-----------------------------------------------------------------------------------------------------------------------------


# MULTI STAGE DOCKER FILE ///////////////////////////////////////////////////////////////////////////////////////////////

FROM python:3.9-slim  AS builder

WORKDIR /app

RUN apt-get update \
   && apt-get upgrade -y\
   && apt install -y gcc default-libmysqlclient-dev pkg-config\
   && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt --target=/app/deps

COPY . .

FROM python:3.9-slim

WORKDIR /app

RUN apt-get update \
   && apt-get upgrade -y\
   && apt install -y gcc default-libmysqlclient-dev pkg-config\
   && rm -rf /var/lib/apt/lists/*

COPY --from=builder /app/deps /app/deps
COPY --from=builder /app .


ENV PYTHONPATH="/app/deps"

EXPOSE 5000

CMD ["python","app.py"]


# -------------------------------------------------------------------------------------------------------------------------------

