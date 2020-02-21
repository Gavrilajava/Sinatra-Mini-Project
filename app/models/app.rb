class App < ActiveRecord::Base
  belongs_to :category
  has_many :installs
  has_many :users, through: :installs
end