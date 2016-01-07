class PagesController < ApplicationController
  before_action :get_donation, only:[:index, :home, :explore]
  # before_action get_username, only:[:donate, :home, :explore]

  def get_donation
    @donations = Donation.all
  end

 # def get_username
 #   if(User.find_by_username(params[:id]))
 #     @username = params[:id]
 #   end
 # end

  def index
  end

  def home
  end

  def profile
    if(User.find_by_username(params[:id]))
      @username = params[:id]
    else
      redirect_to root_path, :notice=> "User not found!"
    end

    @donations = Donation.all.where("user_id = ?", User.find_by_username(params[:id]).id)
    @newDonation = Donation.new

  end
  def explore
  end
  def donate

    if current_user
      @sheets = current_user
    else
      redirect_to new_user_session_path, notice: 'You are not logged in.'
    end


    @donations = Donation.all.where("user_id = ?", @sheets.id)
    @newDonation = Donation.new

  end
end
