# Flash Chords

### Authored by: Mekinsie Callahan, Micah Olson, Geof Rosenmund

## Description

kdfjhgkfsdjhgkjdsfhkj

## Technologies used

* HTML
* Bootstrap
* CSS
* git
* Ruby on Rails
* Embedded Ruby (ERB)
* RSpec
* Bundler
* PostgreSQL

* * *
## Authentication
This services does not require any authentication. CORS is also enabled.
* * *
## Software Requirements
* **Ruby is required to run this application**
* **PostgreSQL is required to run the database**  

 <a href="https://www.learnhowtoprogram.com/ruby-and-rails/getting-started-with-ruby/installing-ruby">Ruby download instructions</a>  
  <a href="https://www.learnhowtoprogram.com/ruby-and-rails/getting-started-with-ruby/installing-postgres">PosgreSQL download instructions</a>  

## Installation Instructions
1. Navigate to the desired directory where you would like to clone the project to.

2. Once you have chosen your desired directory, clone the github repo using the version control tool `git` (<a href="https://www.learnhowtoprogram.com/introduction-to-programming/getting-started-with-intro-to-programming/git-and-github">download instructions</a>). Typing the following command into your terminal:
```bash
$ git clone https://github.com/mekinsie/gathered_analysis
```
3. Open the project in VSCode by typing the following in your terminal:

``` bash
$ code .
```
* Note: VSCode is a code editing software. If you don't already have it, you can download it <a href="https://code.visualstudio.com/">here</a>

4. While located in the root directy, install gem bundler by typing:

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
Now that the server is running, you may make successfully make API calls.
* * *
## Running Tests
* This application was created using test-driven development (TDD).
* To run the tests yourself, follow the steps below.

Simply type "rspec" into your terminal while located in the root directory of the project.
``` bash
$ rspec
```
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
