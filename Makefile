
create:
	@heroku create kmk-harp --region eu

heroku:
	@git push heroku master
	@heroku open

compile:
	@harp compile _harp ./

all: compile
	@harp server
