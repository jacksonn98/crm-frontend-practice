class ActivitiesController < ApplicationController

  def create
    @activity = Activity.new
    @activity["activity_type"] = params["activity_type"]
    @activity["date"] = params["date"]
    @activity["contact_id"] = params["contact_id"]
    @activity["company_id"] = params["company_id"]
    @activity["note"] = params["note"]
    # assign logged-in user as activity's user (aka "salesperson")
    @activity["user_id"] = session["user_id"]
    @activity.save
    redirect_to "/companies/#{@activity["company_id"]}"
  end

end
