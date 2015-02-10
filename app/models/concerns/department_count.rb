module DepartmentCount
  extend ActiveSupport::Concern

  def department_count
    departments = self.departments
    if departments.present?
      return departments.count
    else
      return 0
    end
  end
end