# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.create(title: "", author: "", page_count: "", img: "")
Book.create(title: "Basic Economics", author: "Thomas Sowell", page_count: 600, img: "")
Book.create(title: "Alexander Hamilton", author: "Ron Chernow", page_count: 570, img: "")
Book.create(title: "The New Right", author: "Michael Malice", page_count: 280, img: "")
Book.create(title: "Atomic Habits", author: "James Clear", page_count: 250, img: "")
Book.create(title: "Starting Strength", author: "Mark Rippetoe", page_count: 600, img: "")
Book.create(title: "The Fountainhead", author: "Ayn Rand", page_count: 800, img: "")
Book.create(title: "KJV Bible", author: "God", page_count: 1800, img: "https://www.christianartgifts.com/product-images/KJV028_1--front.jpg?resizeid=5&resizeh=1200&resizew=1200")
Book.create(title: "12 Rules for Life", author: "Jordan Peterson", page_count: 450, img: "")
Book.create(title: "Theory and History", author: "Ludwig von Mises", page_count: 450, img: "")
Book.create(title: "Modern Times", author: "Paul Johnson", page_count: 450, img: "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1387735243i/55304._UY630_SR1200,630_.jpg")
Book.create(title: "Man, Economy, and State", author: "Murray N. Rothbard", page_count: 450, img: "https://upload.wikimedia.org/wikipedia/en/thumb/b/b2/ManEconomyAndStateVol1.jpg/220px-ManEconomyAndStateVol1.jpg")

User.create(name: "Bill")
User.create(name: "Fred")
User.create(name: "Linda")
User.create(name: "Sally")

Bookshelf.create(name: "Have Read", book: Book.find_by(title: ""), user: User.find_by(name: "Sally"))
Bookshelf.create(name: "Have Read", book: Book.find_by(title: ""), user: User.find_by(name: "Bill"))
Bookshelf.create(name: "Have Read", book: Book.find_by(title: ""), user: User.find_by(name: "Linda"))
Bookshelf.create(name: "Have Read", book: Book.find_by(title: ""), user: User.find_by(name: "Fred"))