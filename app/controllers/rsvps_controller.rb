class RsvpsController < ApplicationController
  # POST /rsvp
  def create
    @rsvp = Rsvp.new(
      email: params[:email],
      user_agent: request.user_agent,
      ip_address: request.remote_ip,
      referrer: request.referer
    )

    if @rsvp.save
      redirect_to root_path, notice: "You're on the list!"
    else
      redirect_to root_path, alert: @rsvp.errors.full_messages.first
    end
  end
end
