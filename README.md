# Asana Light - Check Your Asana Tasks on A Mobile Browser

- Clone this repo
- Push to heroku

```bash
$ heroku create
$ git push heroku master
```

- Get your Asana API key.
- The key should be accessible at ENV['ASANA_API_KEY']

To do this on Heroku, run:

```bash
$ heroku config:add ASANA_API_KEY={your api key here}
```
