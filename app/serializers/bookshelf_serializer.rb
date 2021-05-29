class BookshelfSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :book_id, :user_id
end
