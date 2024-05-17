module Bootstrap
  class Applications < Thor::Group
    def applications
      puts "-> Installing applications"

      Dir.children("lib/applications").each do |filename|
        application_name  = File.basename(filename, File.extname(filename)).capitalize
        application_klass = Object.const_get("Bootstrap::Applications::#{application_name}")
        application       = application_klass.new

        print ".. Installing #{application_name}"

        if application.install
          print "\r✅ Installing #{application_name}"
          puts ""
        else
          print "\r❎ Installing #{application_name}"
          puts ""
        end

        application.cleanup!
      end

      puts ""
    end
  end
end
