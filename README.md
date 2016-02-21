# agile_sp_2016_TeamAwesome

###Facebook
When adding facebook, we need to add a couple new lines to the application.yml file. Those lines are in a file on Slack. Facebook will not work on your local computer, Facebook requires a callback url to be whitelisted for Facebook to return the authentication to. We only have https://cvtcteamawesome-chaselukea.c9users.io/ and http://www.cvtcteamawesome.com whitelisted.

  APP_ID: ''
  APP_SECRET: ''

###Feb 7th: Project Update to PostgreSQL & Figaro - Setup Guide
When doing the latest pull, we've updated to postgres as our database and added figaro. You will need to run the following:
  `bundle install`

You should see 'pg' on the bundle list; if not then:

  - `brew install postgresql` if you have a Mac with brew installed
    - otherwise visit http://www.postgresql.org/download/ for your OS
  - after postgresql installed, run `gem install pg`

You should also now see 'figaro' on the bundle list

Now you'll need to re-create and update the database to postgresql with:
  `rake db:create:all`
  `rake db:migrate`

To set up figaro, you will have to type `figaro install` at the terminal,
then edit the `config/application.yml` file it created

Use this structure:
```
  S3_BUCKET_NAME: 'nameofbucket'
  AWS_ACCESS_KEY_ID: 'awsaccesskeynumber'
  AWS_SECRET_ACCESS_KEY: 'awssecretcaccesskeynumber'
```

*The values to put in the '' are in the file `teamawesome_credentials.csv` located in our Slack files online*
