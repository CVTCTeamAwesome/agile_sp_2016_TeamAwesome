# agile_sp_2016_TeamAwesome

###Feb 5th: PostgreSQL Setup Guide
When doing the latest pull, we've updated to postgres as our database and added figaro. You will need to run the following:
  `bundle install`
You should see `pg` on the bundle list; if not then:
  *`brew install postgresql` if you have a Mac and brew
  *otherwise visit http://www.postgresql.org/download/ for your OS
  *after postgresql installed, run `gem install pg`

You should see 'figaro' on the bundle list


Then you'll need to create and update the postgresql database with:
  `rake db:create:all`
  `rake db:migrate`

To use figaro, you will have to type `figaro install` at the terminal,
then edit the config/application.yml file it created; use this structure:

S3_BUCKET_NAME: 'nameofbucket'
AWS_ACCESS_KEY_ID: 'awsaccesskeynumber'
AWS_SECRET_ACCESS_KEY: 'awssecretcaccesskeynumber'

**The values are in the file `teamawesome_credentials.csv` located in our Slack files online**
