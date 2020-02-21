class Category < ActiveRecord::Base
  has_many :apps
  has_many :users, through: :apps
end