# README

pre-req:
[install ruby with devkit](https://rubyinstaller.org/downloads/): 3.3.6
[install node](https://nodejs.org/en/download): 22.12.0
install yarn: `npm install --global yarn`


Start application locally: 
`bundle install`
`rails db:migrate`
`yarn install`
`yarn build:css`
`yarn build`
`rails s`

Things you may want to cover:

* Ruby version
3.3.6

* Configuration

* How to run linter
`rubocop`

* How to run tests
`rails test`


todo: 
- fix form for #show action
- add form for #edit action
- copy over to form pattern to initiative tab
- figure out why app is rendering multiple times on load
- update initiative_items table to have description field
- add team_initiative_items table that links initiative_items to teams 
- add team_initiative_items_audit table that tracks updates to initiative item updates for teams
- add chart.js to the repo and build up POC with dummy data