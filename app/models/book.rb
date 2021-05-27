class Book < ApplicationRecord
    has_many :bookshelves
    has_many :users, :through => :bookshelves
end
