module SaveDepartments
  extend ActiveSupport::Concern

  def save_departments
    if params[:department_form].present?
      @user = User.find_by_id(params[:department_form][:user_id])
      @department_form = DepartmentForm.new
      @department_form.add_department(params[:department_form])
      @departments = @user.departments
    end
  end
end