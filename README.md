yardocco
========

  YARD Templates for docco-style docs. See [murdoc](https://github.com/markiz/murdoc) & [docco](http://jashkenas.github.com/docco/)
  
  ![Screenshot](http://files.droplr.com/files/14333001/pW2k.Screen%20shot%202011-01-25%20at%2021:29:19.png)

    gem install yardocco
    
  Add `require 'yardocco'` to your yard generator code. Something like this:
  
    require 'yard'
    require 'yardocco'
    YARD::Rake::YardocTask.new
    
  murdoc dependency is [pygments](http://pygments.org/) for highlight code.