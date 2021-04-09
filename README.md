<div align="center">
  <img src="public/logo_readme.png" alt="Flash Chords logo">
</div>

### Authored by: Mekinsie Callahan, Micah Olson, Geof Rosenmund

* * *

## Description

Flash Chords is a web application where you can learn piano chords through the use of flash cards. Sign up to save and customize your own flashcard sets. 

* * *

## Technologies used

* HTML
* Bootstrap
* Sass
* git
* Ruby on Rails
* Embedded Ruby (ERB)
* RSpec
* Bundler
* PostgreSQL
* Devise

* * *

## Software Requirements
* **Ruby is required to run this application**
* **PostgreSQL is required to run the database**  

 <a href="https://www.learnhowtoprogram.com/ruby-and-rails/getting-started-with-ruby/installing-ruby">Ruby download instructions</a>  
  <a href="https://www.learnhowtoprogram.com/ruby-and-rails/getting-started-with-ruby/installing-postgres">PosgreSQL download instructions</a>  

* * *


## Heroku Deployment

Use this link to immediately have access to a working site.   
Heroku: https://blooming-gorge-72399.herokuapp.com/

* * * 

## Installation Instructions
1. Navigate to the desired directory where you would like to clone the project.

2. Once you have chosen your desired directory, clone the github repo using the version control tool `git` (<a href="https://www.learnhowtoprogram.com/introduction-to-programming/getting-started-with-intro-to-programming/git-and-github">download instructions</a>). Type the following command into your terminal:
```bash
$ git clone https://github.com/MicahOlson/piano_pals.git
```
3. Open the project in VSCode by typing the following in your terminal:

``` bash
$ code .
```
_**Note:** VSCode is a code editing software. If you don't already have it, you can download it <a href="https://code.visualstudio.com/">here</a>_

4. While located in the root directory, install gem bundler by typing:

``` bash
$ gem install bundler
```

5. Install gem bundles by typing:

``` bash
$ bundle install
```

6. Create a database and seed it with the following command:
```
$ rake db:setup
```
The database should now be correctly set up. And you may start a local server to interact with the project. 

7. To start a local server, type the following into your terminal:
```
$ rails s
```
8. Open your default browser and type "localhost:3000" into the search bar and press enter. Here, you will see the live server.

* * *
## Running Tests
* This application was created using test-driven development (TDD).

Simply type "rspec" into your terminal while located in the root directory of the project.
``` bash
$ rspec
```
* * *
## Database Layout:

![Database Layout](/public/db_schema.png)

* * * 
## License
> [GPLv3](https://choosealicense.com/licenses/gpl-3.0/)\
> Mekinsie Callahan &copy; 2021  
> Micah Olson &copy; 2021  
> Geof Rosenmund &copy; 2021  
* * *

## Contact Information

Reach Mekinsie via <a href="https://www.linkedin.com/in/mekinsie/" target="_blank">LinkedIn</a> or <a href="mailto:mekinsie.aja@gmail.com" target="_blank">email</a></li>.  
Reach Micah via <a href="https://www.linkedin.com/in/micah-lewis-olson/" target="_blank">LinkedIn</a> or <a href="mailto:micah.olson@protonmail.com" target="_blank">email</a></li>.  
Reach Geof via <a href="https://www.linkedin.com/in/geofrosenmund/" target="_blank">LinkedIn</a> or <a href="mailto:geof.rosenmunds.email@gmail.com" target="_blank">email</a></li>.
