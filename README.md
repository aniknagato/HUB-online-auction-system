# README 

Milestone 1

Two gems bcrypt and annotate was added in Gemfile.

The procedure of the setting up the server is the same as Boot Camp projects. Some seed data are added in seeds.rb. 
For completeness, the procedure for running the code is given in the following.



1. gem install bundler
2. bundle install --without production
3. rails db:migrate
4. rails db:reset / rails db:seed
5. rails s -b 0.0.0.0