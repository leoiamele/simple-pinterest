puts 'Seeds Start'
require 'faker'
BoardPin.delete_all
Board.delete_all
User.delete_all
Pin.delete_all
puts 'Database Errased'

(5..9).to_a.sample.times do
  user = User.new(email: Faker::Internet.email, first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name , quote: Faker::Quote.famous_last_words,
                  avatar: Faker::Avatar.image, password: "123456")
  user.save
  puts "Creado el usuario #{user.id}"
  (6..8).to_a.sample.times do
    board = Board.new(name: Faker::Book.title, description: Faker::Lorem.paragraphs.first)
    user.boards << board
    board.save
    puts "Creado el board #{board.id}"
    puts 'Board Id'
    puts board.id

    (9..15).to_a.sample.times do
      pin = Pin.new(image: ["https://images.unsplash.com/photo-1601404392031-e60fccba272c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80",
                            "https://images.unsplash.com/photo-1600673406905-207f8fa7d062?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80",
                            "https://images.unsplash.com/photo-1601369792098-7cf4df1091d1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80",
                            "https://images.unsplash.com/photo-1601314167099-232775b3d6fd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1461&q=80",
                            "https://images.unsplash.com/photo-1587991545721-91fa289117f8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80"].sample,
                            title: Faker::Book.title, description: Faker::Lorem.paragraphs.first, tags: "house, tree, sunset")
      board.pins << pin
      pin.save
      puts "Creado el pin #{pin.id}"
    end
  end
end
