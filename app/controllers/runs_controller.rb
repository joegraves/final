class RunsController < ApplicationController

def destroy
    the_run = Run.find_by("id" => params["id"])
    the_run.delete
    redirect_to "/"
  end

  def create
    Run.create("date" => params["date"],
               "distance" => params["distance"],
               "time" => params["time"],
               "dog1_id" => params["id"],
               "dog2_id" => params["id"],
               "user_id" => params["id"])
    redirect_to "/"
  end

  def update
    the_run = Run.find_by(params["id"])
    the_run.update("date" => params["date"],
               "distance" => params["distance"],
               "time" => params["time"],
               "dog1_id" => params["dog1_id"],
               "dog2_id" => params["dog2_id"],
               "user_id" => params["id"])
    redirect_to "/"
  end

end
