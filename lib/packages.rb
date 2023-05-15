module Bootstrap
  class Packages < Thor::Group
    MANIFEST = [
      'exa',
      'command-not-found',
      'fzf',
      'hstr',
      'httpie',
      'tmux',
      'tmuxp',
      'vim',
      'zoxide',
      'zsh',
      'zsh-antigen'
    ]

    # desc 'packages', 'Installs applications from official repository'
    def packages
      puts "-> Installing packages"

      update_packages
      upgrade_packages
      install_packages

      puts ""
    end

    private

    def update_packages
      print "[ ] Updating available packages list"

      system("sudo apt update", [:out, :err] => File::NULL)

      print "\r[✔] Updating available packages list"
      puts ""
    end

    def upgrade_packages
      print "[ ] Upgrading installed packages"

      system("sudo apt upgrade", [:out, :err] => File::NULL)

      print "\r[✔] Upgrading installed packages"
      puts ""
    end

    def install_packages
      print "[ ] Installing packages"

      system "sudo apt install --yes #{MANIFEST.join(' ')}", [:out, :err] => File::NULL

      print "\r[✔] Installing packages"
      puts ""
    end
  end
end
