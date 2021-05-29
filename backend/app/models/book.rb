class Book < ApplicationRecord
    has_many :bookshelves
    has_many :users, :through => :bookshelves
    has_many :comments
    has_many :users, :through => :comments
end
