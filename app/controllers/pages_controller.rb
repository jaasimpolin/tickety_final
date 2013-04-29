class PagesController < ApplicationController
  
  def creators
  end

  def customer_reward
   @user= current_user
   @rewards= Reward.find(:all, :conditions => ["reward_points <= ?", @user.reward_points])
  end

  def currentlyshowing
    @allmovies = Movie.order("created_at desc")
  end

  def index
    if current_user == true
    if current_user.is_admin?
        redirect_to admindashboard_path
      end
    end  
      
    @newrelease = Movie.order("created_at desc").limit(8).where("created_at < ?", 1.second.ago)
  end

  def newreleases
    @newrelease = Movie.order("created_at desc").limit(8).where("created_at < ?", 1.second.ago)
  end

  def policies
  end

  def webinfo
  end
  
  def admindashboard
  end
end