module PokeyRunner
  class Command
    def self.run(command, args)
      case command
      when 'start'
        PokeyRunner.run!
      when 'help'
        # Documentation
      end
    end
  end
end
