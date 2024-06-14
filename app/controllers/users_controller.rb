class UsersController < ApplicationController
  def index
    @all_users = User.all.order({ :username => :asc })

    render({ :template => "user_templates/index" })
  end

  def show

    render({ :template => "user_templates/show"})
  end
end
