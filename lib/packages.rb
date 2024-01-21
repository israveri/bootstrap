module Bootstrap
  class Packages < Thor::Group
    MANIFEST = [
      'command-not-found',
      'curl',
      'exa',
      'fzf',
      'git',
      'hstr',
      'httpie',
      'tldr',
      'tmux',
      'tmuxp',
      'vim',
      'zoxide',
      'zsh-antigen',
      'zsh'
    ]

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
