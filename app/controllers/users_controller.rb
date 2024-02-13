class UsersController < ApplicationController

  def show

    @user = User.find(params[:id])

    # @comments = @prototype.comments
  end


  
end


