# SpinningCat

## Workflow to migrate release

On personal computer:
* on personal computer, make and test a change
* push to github

On github:
* merge to master
* make a new release

On production machine:
* wget the new release on production machine
* tar -xzaf <zip_file>
* cd spinning_cat_<release_id>
* Install dependencies with `mix deps.get`
* Create and migrate your database with `mix ecto.create && mix ecto.migrate`
* Install Node.js dependencies with `cd assets && npm install && node node_modules/brunch/bin/brunch build`
* cd ../
* Start Phoenix endpoint with `mix phx.server`

nb. this can be probably done better with edeliver, note that the digitalocean tutorial possibly skipped installing npm, node, and nodejs legacy /w yarn ... see below.

## Documentation and Setup

Tutorial:
https://www.digitalocean.com/community/tutorials/how-to-automate-elixir-phoenix-deployment-with-distillery-and-edeliver-on-ubuntu-16-04

Postgres

https://stackoverflow.com/questions/35785892/ecto-postgres-install-error-password-authentication-failed

https://www.digitalocean.com/community/tutorials/how-to-install-and-use-postgresql-on-ubuntu-16-04

Node.js

https://nodesource.com/blog/installing-node-js-tutorial-ubuntu/  (change the 6 to an 8)

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install gcc g++ make
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn
sudo apt install nodejs-legacy
sudo apt-get install inotify-tools

npm

Also make sure you've installed npm!

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
