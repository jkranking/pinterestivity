class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :pins


validates :password, :presence => true,
                     :on => :create,
                     :format => {:with => /\A.*(?=.{10,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\@\#\$\%\^\&\+\=]).*\Z/ }

                      # format is a regular expression generator 
end
