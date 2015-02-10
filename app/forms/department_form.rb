class DepartmentForm
  include ActiveModel::Model

  attr_accessor :user_id, :name

  def add_department(dept_params)
  	@user = User.find_by_id(dept_params[:user_id])
  	if dept_params[:name].present?
	  	@dept = @user.departments.new
	  	@dept.name = dept_params[:name]
	  	@dept.save
	  end
  end
end