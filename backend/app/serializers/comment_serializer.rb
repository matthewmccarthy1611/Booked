class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :book, :user
  belongs_to :user
  belongs_to :book
end
