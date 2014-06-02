class UsersController < ApplicationController

  def show
    @user = User.find_by("id" => params["id"])

    logger.debug @user["id"].inspect
    logger.debug cookies["user_id"].inspect

    if (@user["id"] != cookies["user_id"].to_i)
      redirect_to "/", :notice => "Try Again!"
    end

  end

  def destroy
    the_user = User.find_by("id" => params["id"])
    the_user.delete
    redirect_to "/"
  end

  def create
    existing_user = User.find_by("email" => params["email"])

    if existing_user == nil
      User.create("first_name" => params["first_name"],
                  "last_name" => params["last_name"],
                  "email" => params["email"],
                  "password" => params["password"],
                  "zip_code" => params["zip_code"],
                  "sex" => params["sex"],
                  "birth_year" => params["birth_year"])
      redirect_to "/users"
    else
      @message = "That email address is already registered. Please try again."
      render "new"
    end
  end

  def update
    the_user = User.find_by(params["id"])
    the_user.update("first_name" => params["first_name"],
                  "last_name" => params["last_name"],
                  "email" => params["email"],
                  "password" => params["password"],
                  "zip_code" => params["zip_code"],
                  "sex" => params["sex"],
                  "birth_year" => params["birth_year"])
    redirect_to '/users/#{the_user["id"]}'
  end

end
