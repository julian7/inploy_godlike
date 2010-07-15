module Inploy
  module Servers
    module Godlike
      attr_accessor :god_group

      def god_cmd
        "god -p #{god_group}"
      end

      def start_server
        run "#{god_cmd} status > /dev/null || #{god_cmd}"
      end

      def restart_server
        start_server
        Dir.glob('config/*.god').each do |conf|
          run "#{god_cmd} load #{conf}"
        end
        run "#{god_cmd} restart #{god_group}"
      end
    end
  end
end
