class BookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :author, :page_count, :img
  has
end
