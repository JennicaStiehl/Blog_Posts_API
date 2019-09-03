class BlogPost < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :contents
  validates_presence_of :published
end
