# Welcome to the UWSP Virtual Tour Server

This is a server that manages data for the UWSP Virtual Tour System.

## Getting Local Version Started
(Commands starting with "$" are run in terminal/cmd, don't include the $)

1. Install Rails  
[Find help here](http://ruby.railstutorial.org/ruby-on-rails-tutorial-book#sec-rubygems)
    - For Windows Machines, use [Rails Installer](http://railsinstaller.org/)
    - For other systems, install:
        * [git](http://git-scm.com/downloads)
        * [rvm](https://rvm.io//rvm/install/)
        * rails:  
            `$ gem install rails -v 3.2.11`

2. Install Postgres Database  
[OS specific guilds](http://wiki.postgresql.org/wiki/Detailed_installation_guides)

4. Clone this project  

        $ git clone https://github.com/soberstadt/uwsp-virtual-tour-server.git

5. Install required gems  

        $ bundle install

4. Setup database

        $ rake db:create
        $ rake db:migrate

5. Start server

        $ rails server

4. Go to [http://localhost:3000/](http://localhost:3000) and you should see the server