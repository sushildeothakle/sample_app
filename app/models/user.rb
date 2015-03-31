# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
# attr_accessible :name, :email

validates :name ,:presence => true, :length => { :maximum => 50 }
validates :email ,:presence => true, :uniqueness => true
end
