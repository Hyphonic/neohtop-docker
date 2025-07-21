# Use Bun's official image
FROM ivangabriele/tauri:debian-bookworm-22-nightly

# Set working directory
WORKDIR /app

# Copy files
COPY . .

# Install dependencies
RUN npm install

# Expose the port
EXPOSE 5173

# Start the app
CMD ["npm", "run", "tauri", "dev"]
