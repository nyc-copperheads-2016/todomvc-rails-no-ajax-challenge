class Task < ActiveRecord::Base
  validates :body, :presence => true
  belongs_to :todo
end
