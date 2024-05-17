module Bootstrap
  module Shell
    extend self

    DEFAULT_DOWNLOAD_DIR = '/tmp'

    def run(command, *args)
      system(command, *args)
    end

    def download(url, filename:, at: DEFAULT_DOWNLOAD_DIR)
      run("curl -sLo #{at + '/' + filename} #{url}")
    end

    def make_executable(filename)
      run("chmod +x #{DEFAULT_DOWNLOAD_DIR}/#{filename}")
    end

    def extract_file(filename, type: :gz)
      command = {
        gz: "gzip -dk #{DEFAULT_DOWNLOAD_DIR}/#{filename}"
      }

      run(command[type.to_sym])
    end

    def move_file(filename, to:)
      run("sudo mv #{DEFAULT_DOWNLOAD_DIR}/#{filename} #{to}")
    end

    def remove_file(filename)
      run("rm -rf #{DEFAULT_DOWNLOAD_DIR}/#{filename}*")
    end
  end
end
