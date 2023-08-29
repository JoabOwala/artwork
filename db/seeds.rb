# db/seeds.rb

# Create users
users = []
5.times do |i|
    users << User.create!(
        username: "user#{i+1}",
        email: "user#{i+1}@example.com",
        password: "password#{i+1}"
    )
end

# Create arts associated with users
users.each do |user|
    2.times do |i|
        Art.create!(
            title: "Artwork #{i+1} by #{user.username}",
            image: "artwork#{i+1}.jpg",
            artist: user.username,
            year: "2023",
            user_id: user.id,
            description: "This is artwork #{i+1} created by #{user.username}."
    )
    end
end
