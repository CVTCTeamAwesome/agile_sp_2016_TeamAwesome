# agile_sp_2016_TeamAwesome

###If you're having any database issues:
Open terminal and type:
  `rake db:drop`
  `rake db:create`
  `rake db:schema:load`

This seems to be a force fix for any issues we're having with migrating and etc.



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
