module PokeyRunner
  class Command
    def self.parse!(command, args = {})
      case command
      when 'start', 's'
        PokeyRunner.run!
      when 'generate' || 'g'
      when 'help'
        # Documentation
      end
    end
  end
end
