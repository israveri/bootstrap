#! /usr/bin/env ruby

require 'thor'
require 'pry'

class Setup < Thor
  desc 'dotfiles', 'Links dotfiles to your home directory.'
  def dotfiles
    Dir.children('dotfiles').each do |filename|
      if File.exist?("#{Dir.home}/#{filename}")
        File.delete("#{Dir.home}/#{filename}")
      end

      File.symlink(
        "#{Dir.pwd}/dotfiles/#{filename}",
        "#{Dir.home}/#{filename}"
      )
    end
  end
end

Setup.start
