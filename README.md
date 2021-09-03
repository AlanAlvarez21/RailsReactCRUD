
# Rails App

Welcome to your [Ruby On Rails](https://rubyonrails.org/) app.

## Setup & Running Locally

Clone down the repo, install [Docker](https://hub.docker.com/editions/community/docker-ce-desktop-mac/) & run:

```bash
$ ./bin/docker/setup
$ ./bin/docker/start
```

This will build the docker image, then setup the `bin/setup` file which will run `bundle`, `yarn` & create the database.

Then navigate your browser to https://127.0.0.1:3000/ to see your site.

### Running one of commands

To run a one off command, run it within the web service, e.g:

```bash
$ ./bin/docker/bundle exec rails db:migrate
$ ./bin/docker/bundle
$ ./bin/docker/yarn
```

### Restoring a database

If you have an existing database dump in a file called `latest.dump`, you can restore it by turning on just the postgres service in one terminal tab, and running `pg_restore` in a secondary tab:

```bash
$ docker-compose up postgres
$ pg_restore --verbose --clean --no-acl --no-owner -j 2 -h localhost -d App_development --username postgres latest.dump
```

## Tests

The template comes preconfigured with [RSpec](https://rspec.info/) for tests, and comes with a [GitHub Action](https://github.com/Ruby-Starter-Kits/Docker-Rails-Template/blob/master/.github/workflows/tests.yml) to run them when you push to GitHub.

You can run RSpec locally by running:

```bash
$ docker-compose -f docker-compose.ci.yml run --rm test
```

rails g model Airline name image_url slug
rails g model Review title description score:integer airline:belongs_to 
rails migrate:db