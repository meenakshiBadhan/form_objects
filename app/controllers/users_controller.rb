class UsersController < ApplicationController
  before_filter :authenticate_user!

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

  def save_departments
    if params[:department_form].present?
      @user = User.find_by_id(params[:department_form][:user_id])
      @department_form = DepartmentForm.new
      @department_form.add_department(params[:department_form])
      @departments = @user.departments
    end
  end
end
