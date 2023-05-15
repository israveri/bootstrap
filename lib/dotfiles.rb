module Bootstrap
  class Dotfiles < Thor::Group
    def dotfiles
      puts "-> Linking dotfiles"

      Dir.children('dotfiles').each do |filename|
        print "[ ] Symlinking #{filename}"

        if File.exist?("#{Dir.home}/#{filename}")
          File.delete("#{Dir.home}/#{filename}")
        end

        File.symlink(
          "#{Dir.pwd}/dotfiles/#{filename}",
          "#{Dir.home}/#{filename}"
        )

        print "\r[✔] Symlinking #{filename}"
        puts ""
      end

      puts ""
    end
  end
end
