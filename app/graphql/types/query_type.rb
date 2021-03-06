module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :books, [Types::BookType], null: true do
      description "All the books"
    end

    field :authors, [Types::AuthorType], null: true do
      description "All the authors"
    end

    def books
      Book.all
    end

    def authors
      Author.all
    end
  end
end
