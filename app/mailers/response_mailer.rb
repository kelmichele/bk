class ResponseMailer < ApplicationMailer
	default from: "RSVP for Wedding <noreply@parrisburnette.com>"
	default subject: "RSVP for Wedding"

	def new_response(response)
	  @response = response

	  mail subject: "RSVP for Wedding"
	  mail to: "kelli@hsdesignhouse.com"
	end
end

