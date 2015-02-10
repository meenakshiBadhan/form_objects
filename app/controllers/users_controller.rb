class UsersController < ApplicationController
  before_filter :authenticate_user!
  include SaveDepartments

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @department_form = DepartmentForm.new
    @departments = @user.departments
    unless @user == current_user
      redirect_to :back, :alert => "Access denied."
    end
  end
end
