require 'generators/base'

module PokeyRunner
  module Generators
    class HookGenerator < Base
      source_root File.expand_path("../templates", __FILE__)

      def self.add_hook
      end
    end
  end
end
