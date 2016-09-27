

all: compile
	@harp server

create:
	@heroku create kmk-harp --region eu

heroku:
	@git push heroku master
	@heroku open

github:
	@git push origin master
	@open "https://ptdorf.github.io/test-harp/"

compile:
	@harp compile _harp ./
