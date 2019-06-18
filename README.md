# Flix App
Flix is a movie database and movie review app built using Ruby on Rails 5.0. It allows the user to browse existing movies and to create new movies in the database. Users can read listed reviews for each movie and create their own reviews.

# Deloyed Application

[https://flix-app-rails.herokuapp.com](https://flix-app-rails.herokuapp.com)
(Deployed to Heroku, please wait 10 seconds to load).


Video of Flix App  (60 seconds):
[https://youtu.be/QfWv7L_xgxk](https://youtu.be/QfWv7L_xgxk)

# Getting Started

Clone Flix App Repository

`git clone https://github.com/nikita-kazakov/flix-rails-app`

  

Change terminal directory to _flix-rails-app_

`cd flix-rails-app`

  

Bundle install required Ruby gems but without production gems.

`bundle install --without production`

  

Run Rails migration to create database tables from schema.

`rails db:migrate`

  

Run seeds.db to populate database with sample movies and reviews.

`rails db:seed`

  

Run rails server

`rails server`

  

Open the internet browser and navigate to URL below.

`http://localhost:3000`

  

You’ll see the index page.

![](https://paper-attachments.dropbox.com/s_F29BDE12228E306D462F0DB6772CB95D709D3FD5327B93152D455220444BB1FD_1560814865933_2019-06-17_17-34-45.jpg)

# Running Tests

Rspec and Capybara are used for testing. Change to the spec directory in the terminal.

`cd flix-rails-app/spec`

Run Rspec

`rspec`

# Features
Flix app allows users to view existing movies, add movies, and add reviews to each movie.

## Show Movie

![](https://paper-attachments.dropbox.com/s_F29BDE12228E306D462F0DB6772CB95D709D3FD5327B93152D455220444BB1FD_1560816056247_2019-06-17_17-56-03.jpg)

![](https://paper-attachments.dropbox.com/s_F29BDE12228E306D462F0DB6772CB95D709D3FD5327B93152D455220444BB1FD_1560816157047_image.png)

## Show Reviews

![](https://paper-attachments.dropbox.com/s_F29BDE12228E306D462F0DB6772CB95D709D3FD5327B93152D455220444BB1FD_1560816688673_image.png)

## Movie and Review Forms

![](https://paper-attachments.dropbox.com/s_F29BDE12228E306D462F0DB6772CB95D709D3FD5327B93152D455220444BB1FD_1560816511850_image.png)

![](https://paper-attachments.dropbox.com/s_F29BDE12228E306D462F0DB6772CB95D709D3FD5327B93152D455220444BB1FD_1560816376157_image.png)

## Technology Used

-   Ruby 2.4.4
-   Ruby on Rails 5.0
-   Rspec and Capybara for testing
-   Bootstrap 4.0 CSS Framework
-   Sass  (css compiler)
-   Heroku for deployment

# Credits
Special thanks to [Pragmatic Studio](https://pragmaticstudio.com/courses/rails) for the initial app idea and guidance.
