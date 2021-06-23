module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :books, [Types::BookType], null: true do
      description 'All the books'
    end

    field :find_book, Types::BookType, null: true do
      argument :book_id, Int, required: true
      description 'Find book by id'
    end

    field :authors, [Types::AuthorType], null: true do
      description 'All the authors'
    end

    def books
      Book.all
    end

    def find_book(book_id:)
      Book.find_by_id(book_id)
    end

    def authors
      Author.all
    end
  end
end
