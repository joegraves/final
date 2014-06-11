class RelationshipsController < ApplicationController

  def create
    @user = User.find_by("id" => params["id"])
    @dog = Dog.find_by("id" => params["id"])

    Relationship.create("user_id" => @user["id"],
               "dog_id" => @dog["id"],)
    redirect_to "/"
  end



end
