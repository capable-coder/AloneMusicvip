FROM python:3.10-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    ffmpeg \
    git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY . .

RUN pip install -U pip uv
RUN uv pip install --system .

# Run both the dummy web server and the music bot
CMD sh -c "python server.py & alonemusic"

