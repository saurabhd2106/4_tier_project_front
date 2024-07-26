
FROM node:18

WORKDIR /app
COPY . .

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory


RUN npm run build


WORKDIR /app


# Expose the port that the application will run on
EXPOSE 3000

# Start the Next.js application
CMD ["npm", "start"]
