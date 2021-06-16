module Types
  class BookType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false, cache_fragment: true
    field :author, Types::AuthorType, null: false
  end
end
