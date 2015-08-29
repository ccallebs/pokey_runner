module PokeyRunner
  module Generators
    class InstallGenerator < Base
      source_root File.expand_path("../templates", __FILE__)

      def copy_config_file
      end

      def add_hook_dir
      end

      def add_default_hook
      end
    end
  end
end
