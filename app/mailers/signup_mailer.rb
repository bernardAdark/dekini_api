class SignupMailer < ApplicationMailer

	def welcome_email(email)
     mail( to:      email,
           subject: 'Welcome aboard Dekini '
            )
     end
end
