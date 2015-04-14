class Comment < ActiveRecord::Base
  belongs_to :post
  validates :author, :body, :email, presence: true
end
