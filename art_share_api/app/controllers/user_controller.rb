class UserController < ApplicationController
  def index
      users = User.all
      render json: users
  end
  
  def show 
    user = User.find(params[:id])
     render json: user
  end

  def create 
    user = User.create(name:params['name'], email:params['email'])
    render plain: "created user: #{user.name} with id: #{user.id}", json: user
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      render json: user
    else
      render json: user.errors.full_messages, status: 422
    end
  end

  def destroy
    User.find(params[:id]).destroy
    render plain: "be gone thot"
  end

  def nest
    render json: params['some_category']['inner_inner_hash']
  end

  private

  # def validate_name(name)
  #   name.is_a?(String)
  # end

  def user_params
    params.require(:user).permit(:name)
  end
end