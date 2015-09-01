require "pokey_runner/version"

module PokeyRunner
  class << self
    def run!
      @hooks = HookLoader.load!
      hooks.each { |h| ScheduleCreator.create!(h) }
      # run schedules
    end
  end
end
