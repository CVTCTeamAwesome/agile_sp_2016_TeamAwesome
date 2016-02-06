# agile_sp_2016_TeamAwesome

###Feb 5th: PostgreSQL Setup Guide
When doing the latest pull, we've updated to postgres as our database. You will need to run the following:
`bundle install`
You should see `pg` on the bundle list; if not then:
*`brew install postgresql` if you have a Mac and brew
*otherwise visit http://www.postgresql.org/download/ for your OS
*after postgresql installed, run `gem install pg`

Finally, you'll need to create and update the postgresql database with:
`rake db:create:all`
`rake db:migrate`

