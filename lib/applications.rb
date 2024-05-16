module Bootstrap
  class Applications < Thor::Group
    def applications
      puts "-> Installing applications"

      Dir.children("lib/applications").each do |filename|
        application_name  = File.basename(filename, File.extname(filename)).capitalize
        application_klass = Object.const_get("Bootstrap::Applications::#{application_name}")

        print ".. Installing #{application_name}"

        case application_klass.new.install
        in true
          print "\r✅ Installing #{application_name}"
          puts ""
        else
          print "\r❎ Installing #{application_name}"
          puts ""
        end
      end

      puts ""
    end
  end
end
