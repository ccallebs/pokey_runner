require './lib/generators/base'

module PokeyRunner
  module Generators
    class InstallGenerator < Base
      source_root File.expand_path("../templates", __FILE__)

      desc "install", "Installs PokeyRunner"
      def install
        copy_config_file
        add_hook_dir
        add_default_hook
      end

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
