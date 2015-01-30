class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  #   :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :user_type
  has_many :books


  def seller?
		(user_type.type_name == "seller")		
	end

	def buyer?
		(user_type.type_name == "buyer")
	end

end
