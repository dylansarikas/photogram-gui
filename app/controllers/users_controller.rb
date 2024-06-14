class UsersController < ApplicationController
  def index
    @all_users = User.all.order({ :username => :asc })

    render({ :template => "user_templates/index" })
  end

  def show
    @this_user = User.where({ :username => params[:username] })[0]

    render({ :template => "user_templates/show"})
  end
end
