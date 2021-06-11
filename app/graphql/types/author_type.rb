module Types
  class AuthorType < Types::BaseObject
    field :id, ID, null: false
    field :pen_name, String, null: false
    field :books, [Types::BookType], null: true
  end
end
