# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Clean database
Article.destroy_all

# Generate 10 fake articles
10.times do
  article = Article.new(
    title: Faker::Book.title,
    content: Faker::Lorem.paragraph(sentence_count: 5)
  )

  article.save!
end

puts "10 fake articles created successfully!"
