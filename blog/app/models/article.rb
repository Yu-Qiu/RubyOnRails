class Article < ActiveRecord::Base
  #apply roles on the model
  resourcify

  has_many :comments, dependent: :destroy
  validates :title, presence: true,
      length: { minimum: 5 }
end
