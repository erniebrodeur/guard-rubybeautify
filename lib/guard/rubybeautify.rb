require "guard/rubybeautify/version"
require 'guard/compat/plugin'

module Guard
  class Rubybeautify < Plugin
    attr_accessor :count, :style

    def initialize(options = {})
      super
      @options = {
        count: 1,
        style: :tabs
      }.merge(options)
    end

    def start
      require 'pry'
      binding.pry
    end

    def stop
    end

    def run_on_modifications(paths)
    end
  end
end
