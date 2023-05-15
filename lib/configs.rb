module Bootstrap
  class Configs < Thor::Group
    def configs
      puts "-> Linking configs"

      Dir.glob("configs/*")
      .select { |f| File.directory? f }
      .each do |dir|
          print "[ ] Symlinking #{File.basename dir}"

          if File.exist? "#{Dir.home}/.config/#{File.basename dir}"
            File.delete "#{Dir.home}/.config/#{File.basename dir}"
          end

          File.symlink(
            "#{Dir.pwd}/#{dir}",
            "#{Dir.home}/.config/#{File.basename dir}"
          )

          print "\r[✔] Symlinking #{File.basename dir}"
        end

      puts ""
    end

    # private

    # def create_configs


    # end
  end
end
