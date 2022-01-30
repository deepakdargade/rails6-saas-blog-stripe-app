Post.destroy_all
10.times do
    Post.create(
        title: Faker::Lorem.sentence(word_count: 3),
        content: Faker::Lorem.paragraph ,
        is_premium: [true, false].sample
    )
end