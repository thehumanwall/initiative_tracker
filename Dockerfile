# Use the official Ruby image from the Docker Hub
FROM ruby:3.3.6

# Install dependencies
RUN apt-get update -qq && \
    apt-get install -y nodejs npm sqlite3

# Install Yarn
RUN npm install -g yarn

# Set the working directory inside the container
WORKDIR /app

# Copy the Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Install the application dependencies
RUN bundle install

# Install Yarn dependencies
COPY package.json yarn.lock ./
RUN yarn install

# Copy the rest of the application code
COPY . .

# Precompile assets
RUN yarn build:css
RUN yarn build

RUN bundle exec rake assets:precompile

# Expose port 3000 to the Docker host, so we can access the server
EXPOSE 3000

# Define the command to run your application
CMD ["sh", "-c", "rails db:migrate && rails s -b '0.0.0.0'"]