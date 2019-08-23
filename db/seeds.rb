# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |topic|
    Topic.create(
        title: " Topic #{topic}"
    )
end
10.times do |blog|
    Blog.create!(
        title: "My blog post #{blog}",
        body: "some body text here",
        topic_id: Topic.last.id
    )
end

puts "10 blog post created"

5.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
        percentage: 50
    )
end

puts "5 Skills created"

5.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio #{portfolio_item}",
        subtitle: "React",
        body: "bodies",
        main_image: "https://via.placeholder.com/300x300",
        thumb_image: "https://via.placeholder.com/150x150"
    )
end

5.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio #{portfolio_item}",
        subtitle: "Angular",
        body: "bodies",
        main_image: "https://via.placeholder.com/300x300",
        thumb_image: "https://via.placeholder.com/150x150"
    )
end

puts "9 Portfolios created"

3.times do |technology|
    Portfolio.last.technologies.create!(
        name: "technology #{technology}"
    )
end
