class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  #  :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:confirmable
         
         validates_format_of :email, :with => (/^([^@\s]+)@((gmail)\.+[a-z]{2,})$/i), :multiline => true
         validates_presence_of :first_name
         validates_presence_of :last_name
         validates_presence_of :username
         validates :phone ,:presence => true,
                   :numericality => true,
                   :length => { :minimum => 11, :maximum => 11 }
end
