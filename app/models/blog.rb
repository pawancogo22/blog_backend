class Blog < ApplicationRecord
    # validates :title, length: {minimum:5, maximum: 100}
    belongs_to(
        :user,
        class_name: 'User',
        foreign_key: 'user_id',
        inverse_of: :blogs
      )
end