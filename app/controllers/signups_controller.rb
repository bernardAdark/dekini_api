class SignupsController < ApplicationController
  
  def index
  	
  end

  def create
  	@signup = Signup.new(signup_params)
  	if @signup.save
  	  SlackSignupService.new.deliver
      #SignupMailer.welcome_email(@signup.email).deliver_now
  	  render json: {data: {email: @signup.email, meaasge: "We glad you joined the family"}}
  	else
      render json: {error: {message: @signup.errors[:email] , status: 422} }
    end
  end

  private
    def signup_params
  	  params.require(:signup).permit(:email)
    end
end
