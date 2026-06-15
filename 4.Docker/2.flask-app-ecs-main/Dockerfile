# SIMPLE DOCKER FILE /////////////////////////////////////////////////////////////////////////////////////////

# FROM python:3.14-slim

# WORKDIR /app

# COPY . .

# RUN pip install -r requirements.txt

# EXPOSE 80

# CMD ["python","run.py"]

#---------------------------------------------------------------------------------------------------------------


# MULTI STAGE IAMGE DOCKER FILE /////////////////////////////////////////////////////////////////////////////////////

# FROM python:3.14-slim AS builder

# WORKDIR /app
 
# COPY requirements.txt .

# RUN pip install --no-cache-dir -r requirements.txt --target=/app/deps

# COPY . .

# FROM python:3.14-slim

# WORKDIR /app

# COPY --from=builder /app/deps /app/deps
# COPY --from=builder /app .

# ENV PYTHONPATH="/app/deps"

# EXPOSE 80

# CMD ["python","run.py"]

#--------------------------------------------------------------------------------------------------------------------

# MULTI STAGING WITH DISTROLESS IMAGE

FROM python:3.14-slim  AS builder

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir  -r requirements.txt --target=/app/deps

COPY . .

FROM gcr.io/distroless/python3-debian12

WORKDIR /app

COPY --from=builder /app/deps /app/deps
COPY --from=builder /app .

ENV PYTHONPATH="/app/deps"

CMD [ "run.py" ]


























