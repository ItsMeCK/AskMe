This is Ask Me application where user can post question and other user can answer it. 

Steps to run application.
1. Application is using ruby 2.4.0 (Please make a change in gemfile as per your Ruby version.)
2. bundle install (if you are on windows, make sure that native sqlite3 gem is installed)
2. rake db:migrate
3. rake db:seed
4. rails s
5. Open localhost:3000 and sign up.
7. bundle exec rspec 
