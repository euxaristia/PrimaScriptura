FROM denoland/deno:alpine

WORKDIR /app

# Copy source code
COPY . .

# Cache all dependencies
RUN deno cache src/main.ts

# Run the bot with explicit permissions
CMD ["deno", "run", "--allow-net", "--allow-read", "--allow-env", "--allow-write", "src/main.ts"]
