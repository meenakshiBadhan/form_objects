class UserDecorator
	attr_reader :user

	def initialize(user)
		@user = user
	end

	def is_account_old?
  	user.created_at > 2.days.ago
  end

  def test_value
		return user.name
	end
end