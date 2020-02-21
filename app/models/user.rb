class User < ActiveRecord::Base
  has_many :installs
  has_many :apps, through: :installs
  has_many :categories, through: :apps
end