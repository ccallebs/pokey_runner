require 'generators/generate/hook_generator'

module PokeyRunner
  class Command
    def self.parse!(command, args = {})
      case command
      when 'start', 's'
        PokeyRunner.run!
      when 'generate', 'g'
        PokeyRunner::Generators::HookGenerator.add_hook(args)
      when 'help'
        # Documentation
      end
    end
  end
end
