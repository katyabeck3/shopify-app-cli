require 'test_helper'

module Node
  module Commands
    class PopulateTest < MiniTest::Test
      def setup
        super
        ShopifyCli::Resources::Tokens.stubs(:admin).returns('myaccesstoken')
        ShopifyCli::Tasks::EnsureEnv.stubs(:call)
        project_context('app_types', 'node')
        ShopifyCli::ProjectType.load_type(:node)
      end

      def test_without_arguments_calls_help
        @context.expects(:puts).with(Node::Commands::Populate.help)
        run_cmd('populate')
      end
    end
  end
end
