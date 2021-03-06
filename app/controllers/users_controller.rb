class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authorize_user!, only: [:edit, :update, :destroy]

  # GET /users/1
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to home_path, notice: "Thank you for signing up, #{@user.first_name}!"
    else
      render :new
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      if current_user.is_admin?
        flash[:success] = 'User changed successfully!'
        redirect_to admin_users_path, notice: 'Admin updated a user successfully'
      else
        redirect_to @user, notice: 'User was successfully updated.'
      end
    else
      render :edit
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy

    respond_to do |format|
      format.html { redirect_to new_user_path , notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  ## Only permits parameters listed below
  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :password,
      :password_confirmation,
      :is_admin
    )
  end

  def authorize_user!
    unless can?(:crud, @user)
      flash[:alert] = "Access Denied!"
      redirect_to home_path
    end
  end


end
