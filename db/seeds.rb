# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

author = Author.create({ pen_name: 'J.R.R. Tolkien' })

Book.create({ title: 'The Lord of the Rings', author: author })
Book.create({ title: 'The Hobbit', author: author })
Book.create({ title: 'The Children of Húrin', author: author })
Book.create({ title: 'The Fall of Gondolin', author: author })
