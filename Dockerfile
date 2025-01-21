FROM ruby:3.2.2

# Set environment variables for gems
ENV GEM_HOME="/root/gems"
ENV PATH="$GEM_HOME/bin:$PATH"

# Install bundler globally
RUN gem install jekyll bundler

WORKDIR /app

COPY . .

RUN bundle install

EXPOSE 4000

# Command to start the Jekyll server
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--livereload"]