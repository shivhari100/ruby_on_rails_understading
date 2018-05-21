class User < ActiveRecord::Base
    validates :user_name, :password, presence: true
end
