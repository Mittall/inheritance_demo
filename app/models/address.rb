class Address < ActiveRecord::Base
	belongs_to :user
	self.inheritance_column = nil
	validates :type, presence: true, :inclusion => { :in => ['Home Address', 'Preferred Address', 'Work Address'] }
	validates :street,:city,:state,:postal,:country,:user_id, presence: true
	def set_type
    raiser "You must override this method in each model inheriting from Product!"
  end
end
