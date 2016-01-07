class DonationsController < ApplicationController

  def new
    @donation = Donation.new
  end


  def create
    @donation = Donation.new(donation_params)
    @donation.user_id = current_user.id
    respond_to do |f|
      if(@donation.save)
        f.html {redirect_to "", notice: "Donation successful!"}
      else
        f.html {redirect_to "", notice: "Error: Donation unsuccessful"}
      end
    end
  end

  private
  def donation_params
    params.require(:donation).permit(:user_id, :charity_id, :amount)
  end


end