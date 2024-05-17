module Bootstrap
  class Applications < Thor::Group
    class Asdf
      def initialize
        @version        = '0.14.0'
        @repo_name      = "https://github.com/asdf-vm/asdf.git"
        @branch         = "v#{@version}"
        @install_locale = "~/.asdf"

        @languages = {
          ruby:   { version: "3.3.1",  url: "https://github.com/asdf-vm/asdf-ruby.git" },
          node:   { version: "22.2.0", url: "https://github.com/asdf-vm/asdf-nodejs.git" },
          python: { version: "3.12.3", url: "https://github.com/danhper/asdf-python.git" },
        }
      end

      def install
        Shell.clone_repository(@repo_name, to: @install_locale, branch: @branch)

        @languages.each_pair { |name, data| install_language(name, data[:version], data[:url]) }

        true
      end

      def cleanup!; end

      private

      def install_language(name, version, url)
        Shell.run("asdf plugin add #{name} #{url}")
        Shell.run("asdf install #{name} #{version}")
        Shell.run("asdf global #{name} #{version}")
      end
    end
  end
end
