class Product < ActiveRecord::Base
  has_many :stories
  has_many :notes
  has_many :wikis
  has_many :wiki_pages
end
