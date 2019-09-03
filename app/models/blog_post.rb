class BlogPost < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :instructions
end
