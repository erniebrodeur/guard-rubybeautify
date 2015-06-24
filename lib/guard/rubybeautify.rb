require "guard/rubybeautify/version"
require 'guard/compat/plugin'

module Guard
	class Rubybeautify < Plugin
		attr_accessor :count, :style, :grace_period

		def initialize(options = {})
			super
      @last_run = 0
			@options = {
        grace_period: 5,
				count: 1,
				style: :tabs
			}.merge(options)
		end

		def run_on_modifications(paths)
			if @last_run + options[:grace_period] < Time.now.to_i
				paths.each do |file|
					Compat::UI.info "Ruby beautify executed against: #{Guard::Compat::UI.color file, :green}"
					`ruby-beautify #{file} --overwrite`
				end
        # make sure to set a real last run if we did a beautify.
				@last_run = Time.now.to_i
      else
				Compat::UI.debug "Ruby beautify skipped on #{paths.join}"
			end
		end
	end
end
