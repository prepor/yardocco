yardocco
========

  YARD Templates for docco-style docs. See https://github.com/markiz/murdoc & http://jashkenas.github.com/docco/

    gem install yardocco
    
  Add require 'yardocco' to your yard generate code. Something like this:
  
    require 'yard'
    require 'yardocco'
    YARD::Rake::YardocTask.new
    
  murdoc dependency is pygments (http://pygments.org/) for highlight code.