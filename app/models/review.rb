class Review < ActiveRecord::Base
  belongs_to :memo
  belongs_to :user
end
