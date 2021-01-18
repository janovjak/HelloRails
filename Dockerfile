FROM ruby:2.7.2

WORKDIR /code

# Copy all the application's files into the /code
# directory.
COPY . /code

# Run bundle install to install the Ruby dependencies.
RUN bundle install

# Install Yarn.
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y yarn

# Run yarn install to install JavaScript dependencies.
RUN yarn install --check-files

CMD ["bin/rails", "server", "-b", "0.0.0.0"]
