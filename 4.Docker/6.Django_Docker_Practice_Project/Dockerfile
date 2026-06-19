




















































# FROM python:3.11-slim AS builder

# WORKDIR /app
# COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt --target=/app/deps

# COPY . .

# FROM python:3.11-slim
# WORKDIR /app
# COPY --from=builder /app/deps /app/deps
# COPY --from=builder /app .
# ENV PYTHONPATH=/app/deps
# EXPOSE 8000
# CMD ["gunicorn","notesapp.wsgi:application","--bind","0.0.0.0:8000"]
