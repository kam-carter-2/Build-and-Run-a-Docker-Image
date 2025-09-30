# -----------------------------
# Step 1: Use an official Node.js 16 base image
# This provides Node and npm inside a lightweight Linux container
# -----------------------------
FROM node:16

# -----------------------------
# Step 2: Set a working directory inside the container
# All following commands will run relative to this folder
# -----------------------------
WORKDIR /app

# -----------------------------
# Step 3: Copy package.json and package-lock.json first
# This allows Docker to cache npm install results if dependencies don't change
# -----------------------------
COPY package*.json ./

# -----------------------------
# Step 4: Install dependencies
# Using npm ci ensures a clean install based on package-lock.json
# -----------------------------
RUN npm install

# -----------------------------
# Step 5: Copy the rest of the application files
# This brings your source code into the container
# -----------------------------
COPY . .

# -----------------------------
# Step 6: Expose port 3000 so we can access the app from the host machine
# -----------------------------
EXPOSE 3000

# -----------------------------
# Step 7: Start the application
# The default CMD runs "npm start" as defined in package.json
# -----------------------------
CMD ["npm", "start"]
