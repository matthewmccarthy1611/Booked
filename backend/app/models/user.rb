class User < ApplicationRecord
    has_many :bookshelves
    has_many :books, :through => :bookshelves
    has_many :comments
    has_many :books, :through => :comments
end
