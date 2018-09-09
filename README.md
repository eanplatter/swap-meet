## SWAPI App

Hello, thanks for checking out my project.

## Basic Architecture

This is a basic rails application with a React client on top. My rails is pretty rusty, so most of the heavy lifting is happening inthe React code. Essentially, all I am doing is normalizing the url (so that it will fit on either a SWAPI endpoint or local end point) and then hitting the local db. If there isn't anything stored locally, I am then hitting the SWAPI API. Once I have my data from the SWAPI API I am saving locally in a POST request to the local db.

## Operating Instructions:

```sh
$ git clone git@github.com:eanplatter/swap-meet.git // or https://github.com/eanplatter/swap-meet.git
$ bundle install // for ruby dependencies
$ yarn install // for React dependencies
$ rails db:migrate
$ rails s
```
