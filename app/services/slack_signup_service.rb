class SlackSignupService

	NEWS = {
    "username": "good_news bot",
    "icon_emoji": ":ghost:",
    "text": "User number #{Signup.count} signed up. Yaaay!!! \nKeep up the good work"
    }


	def initialize(channel = "#general")
		@uri = URI("https://hooks.slack.com/services/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")
		@channel = channel
		@params = {payload:  NEWS.to_json}
	end

	def deliver
	  begin
	    Net::HTTP.post_form(@uri, @params)
	  rescue => e
	    Rails.logger.error("SlackSignups: Error when sending: #{e.message}" )
	  end
    end
end