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

    def run_on_modifications(paths)
      unless @beautified
        @beautified = true
        paths.each do |file|
		      `ruby-beautify #{file} --overwrite`
          Compat::UI.info "Ruby beautify executed against #{file}"
        end
      else
        @beautified = false
      end
    end
  end
end
