class User < ApplicationRecord
    # validates :email,mobilenum, presence: true, length: {minimum:5, maximum: 100}
    has_many(
        :blogs,
        class_name: 'Blog',
        foreign_key: 'user_id',
        inverse_of: :user,
        dependent: :destroy
      )
    
end