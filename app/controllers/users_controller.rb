class UsersController < ApplicationController
  def index
    @all_users = User.all.order({ :username => :asc })

    render({ :template => "user_templates/index" })
  end

  def show
    @this_user = User.where({ :username => params[:username] })[0]

    render({ :template => "user_templates/show"})
  end
  
  def create
    @new_user = User.new
    @new_user.username = params[:username]

    @new_user.save

    redirect_to("/users/#{@new_user.username}")
  end

  def update
    user = User.find(params[:id])
    user.username = params[:username]
    user.save

    redirect_to("/users/#{user.username}")
  end
end
