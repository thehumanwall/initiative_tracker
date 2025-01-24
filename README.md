# README

pre-req:
[install ruby with devkit](https://rubyinstaller.org/downloads/): 3.3.6
[install node](https://nodejs.org/en/download): 22.12.0
install yarn: `npm install --global yarn`


* Start application locally: 
`bundle install`
`rails db:migrate`
`yarn install && yarn build:css && yarn build`
`rails s`

* Run with podman
`podman build -t initiative_tracker -f .\Dockerfile.dev`
`podman run -dt --name initiative_tracker -p 3000:3000 initiative_tracker`
`podman exec -it initiative_tracker bin/rails db:migrate`

* Run with docker-compose
`docker-compose build`
`docker-compose up`

Things you may want to cover:

* Ruby version
3.3.6

* Configuration

* How to run linter
`rubocop`

* How to run tests
`rails test`

* Database interactions
migrate and seed: `rails db:migrate db:seed`
restart fresh: `rails db:drop:_unsafe db:create db:migrate db:seed`

todo: 
- copy over to form pattern to initiative tab
- make this work with docker through podman so it can be ran on anything
- figure out why app is rendering multiple times on load
- update initiative_items table to have description field
- add team_initiative_items table that links initiative_items to `teams 
- add team_initiative_items_audit table that tracks updates to initiative item updates for teams
- add chart.js to the repo and build up POC with dummy data