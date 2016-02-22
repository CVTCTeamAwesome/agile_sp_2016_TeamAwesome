# agile_sp_2016_TeamAwesome

###Instructions for Setting Up:
1) clone the repo
2) navigate to the root of the project
3) run 'figaro install'
4) edit config/application.yml and add the 'Amazon S3' and 'Facebook' authentication lines from the Slack files
5) run 'rake db:migrate' to create the databases
6) run 'bundle install'
7) run the application with 'rails s'
Note: if you have an existing postgresql database and get migration errors, run 'rake db:drop' then 'rake db:create' then 'rake db:migrate' again; some circumstances required a manual edit at the list of databases in postgresql's admin
