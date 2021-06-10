# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.create(title: "Alexander Hamilton", author: "Ron Chernow", page_count: 570, img: "https://images-na.ssl-images-amazon.com/images/I/9168wNMBk1L.jpg")
Book.create(title: "The New Right", author: "Michael Malice", page_count: 280, img: "https://images-na.ssl-images-amazon.com/images/I/510YXq4hZFL._SY291_BO1,204,203,200_QL40_ML2_.jpg")
Book.create(title: "Starting Strength", author: "Mark Rippetoe", page_count: 600, img: "https://m.media-amazon.com/images/I/51qninUnshL.jpg")
Book.create(title: "The Fountainhead", author: "Ayn Rand", page_count: 800, img: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/The_Fountain_Head_%281943_1st_ed%29_-_Ayn_Rand.jpg/220px-The_Fountain_Head_%281943_1st_ed%29_-_Ayn_Rand.jpg")
Book.create(title: "KJV Bible", author: "God", page_count: 1800, img: "https://www.christianartgifts.com/product-images/KJV028_1--front.jpg?resizeid=5&resizeh=1200&resizew=1200")
Book.create(title: "Theory and History", author: "Ludwig von Mises", page_count: 450, img: "https://upload.wikimedia.org/wikipedia/en/thumb/0/0d/HumanActionFirst.jpg/220px-HumanActionFirst.jpg")
Book.create(title: "Modern Times", author: "Paul Johnson", page_count: 450, img: "https://upload.wikimedia.org/wikipedia/en/thumb/a/a1/Modern_Times_%28book%29.jpg/220px-Modern_Times_%28book%29.jpg")
Book.create(title: "Man, Economy, and State", author: "Murray N. Rothbard", page_count: 450, img: "https://m.media-amazon.com/images/I/51Em01CeumL.jpg")

User.create(name: "Bill")
User.create(name: "Fred")
User.create(name: "Linda")
User.create(name: "Sally")

Bookshelf.create(name: "Have Read", book: Book.find_by(title: "KJV Bible"), user: User.find_by(name: "Sally"))
Bookshelf.create(name: "Have Read", book: Book.find_by(title: "KJV Bible"), user: User.find_by(name: "Bill"))
Bookshelf.create(name: "Have Read", book: Book.find_by(title: "KJV Bible"), user: User.find_by(name: "Linda"))
Bookshelf.create(name: "Have Read", book: Book.find_by(title: "KJV Bible"), user: User.find_by(name: "Fred"))

Comment.create(content: "Good read", book: Book.find_by(title: "KJV Bible"), user: User.find_by(name: "Fred"))
Comment.create(content: "I prefer the ESV", book: Book.find_by(title: "KJV Bible"), user: User.find_by(name: "Bill"))
Comment.create(content: "Not great", book: Book.find_by(title: "Alexander Hamilton"), user: User.find_by(name: "Sally"))
Comment.create(content: "Good read", book: Book.find_by(title: "The Fountainhead"), user: User.find_by(name: "Fred"))
Comment.create(content: "meh", book: Book.find_by(title: "The Fountainhead"), user: User.find_by(name: "Bill"))
Comment.create(content: "Not great", book: Book.find_by(title: "The Fountainhead"), user: User.find_by(name: "Sally"))
Comment.create(content: "on point", book: Book.find_by(title: "The New Right"), user: User.find_by(name: "Fred"))
Comment.create(content: "meh", book: Book.find_by(title: "The New Right"), user: User.find_by(name: "Bill"))
Comment.create(content: "Wow!", book: Book.find_by(title: "Modern Times"), user: User.find_by(name: "Sally"))