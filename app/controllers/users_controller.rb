class UsersController < ApplicationController
  
  #Get to /user/:id
  def show
    @user = User.find(params[:id])  #Variable in [ ] muss mit der Variable aus dem path also /user/:ID <- übereinstimmen 
  end
 
end