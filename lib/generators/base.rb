require 'fileutils'
require 'thor'

module PokeyRunner
  module Generators
    class Base < ::Thor
      def self.source_root(arg)
        File.dirname(__FILE__)
      end

      # File railties/lib/rails_generator/commands.rb, line 298
      def template(relative_source, relative_destination, template_options = {})
        create_file(relative_source, relative_destination, template_options) do |file|
          # Evaluate any assignments in a temporary, throwaway binding.
          vars = template_options[:assigns] || {}
          b = template_options[:binding] || binding
          vars.each { |k,v| eval "#{k} = vars[:#{k}] || vars['#{k}']", b }

          # Render the source file with the temporary binding.
          ERB.new(file.read, nil, '-').result(b)
        end
      end
    end
  end
end
