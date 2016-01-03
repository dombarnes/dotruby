# dotruby

Output a list of all versions of Ruby being used in subdirectories based on .ruby-version files used by [rbenv](http://github.com/sstephenson/rbenv).

## Installation
If you already have ~/bin in your $PATH:

    $ ln -s dotruby/dotruby.rb ~/bin/dotruby  
    $ chmod +x ~/bin/dotruby  

Then reload your shell

## Usage
Run this in your projects folder:  

    $ cd ~/projects  
    $ dotruby  
    Checking /Users/dom/projects
    chatty: 2.1.2  
    internalapp: 2.1.2  
    knut: 2.1.2  
    Leave-Management-System: 1.9.3-p448  
    PunchClockServer: 2.0.0-p353  
    RescueBoard: 2.2.1  
    Slogger: 2.1.2  
    StatusBoard-Panic: test  
    team_dashboard: 2.1.2  
    toggl_status_board: 1.9.3-p362  
