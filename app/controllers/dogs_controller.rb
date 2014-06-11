class DogsController < ApplicationController

  def destroy
    the_dog = Dog.find_by("id" => params["id"])
    the_dog.delete
    redirect_to "/"
  end

  def create
    Dog.create("name" => params["name"],
               "sex" => params["sex"],
               "weight" => params["weight"],
               "birth_year" => params["birth_year"],
               "breed_id" => params["breed_id"],)
    redirect_to "/"
  end

  def update
    the_dog = Dog.find_by(params["id"])
    the_dog.update("name" => params["name"],
               "sex" => params["sex"],
               "weight" => params["weight"],
               "birth_year" => params["birth_year"],
               "breed_id" => params["breed_id"],)
    redirect_to "/"
  end


end
