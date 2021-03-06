require 'test_helper'

module Node
  module Commands
    class TunnelTest < MiniTest::Test
      def setup
        super
        ShopifyCli::ProjectType.load_type(:node)
      end

      def test_auth
        ShopifyCli::Tunnel.any_instance.expects(:auth)
        run_cmd('tunnel auth')
      end

      def test_start
        ShopifyCli::Tunnel.any_instance.expects(:start)
        run_cmd('tunnel start')
      end

      def test_stop
        ShopifyCli::Tunnel.any_instance.expects(:stop)
        run_cmd('tunnel stop')
      end
    end
  end
end
