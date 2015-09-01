module PokeyRunner
  module Generators
    class InstallGenerator < Base
      source_root File.expand_path("../templates", __FILE__)

      def copy_config_file
        template 'config.rb', 'config.rb'
      end

      def add_hook_dir
        FileUtils::mkdir_p 'hooks'
      end

      def add_default_hook
        template 'custom_hook.rb', 'hooks/custom_hook.rb'
      end
    end
  end
end
