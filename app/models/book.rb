class Book < ActiveRecord::Base
	belongs_to :user


class Product < ActiveRecord::Base
  belongs_to :category
  has_attached_file :image
end


end
