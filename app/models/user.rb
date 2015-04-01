# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  name               :string
#  email              :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  encrypted_password :string
#

class User < ActiveRecord::Base
# attr_accessible :name, :email
attr_accessor :password 

validates :name , :presence => true, :length => { :maximum => 50 }
validates :email , :presence => true, :uniqueness => true
validates :password, :presence => true, :confirmation => true
end
