require 'pry'
require 'thor'

Dir.glob("lib/**/*.rb").each { |f| require File.expand_path(f, Dir.pwd) }
