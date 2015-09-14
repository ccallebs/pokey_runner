require 'generators/generate/hook_generator'
require 'generators/install/install_generator'

module PokeyRunner
  class Command
    def self.parse!(command, args = {})
      case command
      when 'start', 's'
        PokeyRunner.run!
      when 'generate', 'g'
        PokeyRunner::Generators::HookGenerator.add_hook(args)
      when 'install'
        generator = PokeyRunner::Generators::InstallGenerator.new
        generator.install
      when 'help'
        # Documentation
      end
    end
  end
end
