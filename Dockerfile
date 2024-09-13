FROM python:3.12-slim

WORKDIR /app

COPY ./* .

# RUN python -m venv .venv && \
#     . .venv/bin/activate && \
#     pip install --no-cache-dir -r requirements.txt && \
#     ls .venv/bin

# CMD [".venv/bin/python3", "main.py"]

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "main.py"]

