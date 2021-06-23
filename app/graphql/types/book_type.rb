module Types
  class BookType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false, cache_fragment: { expires_in: 1.minute }
    field :author, Types::AuthorType, null: false
  end
end
