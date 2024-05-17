module Bootstrap
  class Applications < Thor::Group
    class Overmind
      def initialize
        @app_name     = 'overmind'
        @version      = ENV.fetch('OVERMIND') { '2.5.1' }
        @filename     = "overmind-v#{@version}-linux-amd64.gz"
        @download_url = "https://github.com/DarthSim/overmind/releases/download/v#{@version}/#{@filename}"
      end

      def install
        Shell.download(@download_url, filename: @filename)
        Shell.extract_file(@filename)
        Shell.make_executable(filename_without_extension)
        Shell.move_file(filename_without_extension, to: "/usr/local/bin/#{@app_name}")
      end

      def cleanup!
        Shell.remove_file(filename_without_extension)
      end

      private

      def filename_without_extension
        File.basename(@filename, File.extname(@filename))
      end
    end
  end
end
