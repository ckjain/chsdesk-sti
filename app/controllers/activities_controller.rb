class ActivitiesController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource 

  def index
#    if current_user.has_role? :admin
    @activities = Activity.order("created_at desc").paginate :page => params[:page], :per_page => 15
#    else
#    @activities = Activity.order("created_at desc").where("society_id = ?", current_user.society_id).paginate :page => params[:page], :per_page => 15
#    end

  end
  
end
