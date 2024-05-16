module Bootstrap
  class Applications < Thor::Group
    class Overmind
      def install
        sleep 1
        true
      end
    end
  end
end
