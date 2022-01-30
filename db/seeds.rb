Post.destroy_all
10.times do
    Post.create(
        title: Faker::Lorem.sentence(word_count: 3),
        content: Faker::Lorem.paragraph ,
        is_premium: [true, false].sample
    )
end

# stripe plans 
p = Stripe::Product.create(name: "Basic")

price1 = Stripe::Price.create(
    product: p.id,
    unit_amount: 10000,
    currency: 'inr',
    recurring: {interval: 'month'}
)

Stripe::Price.update(price1.id, lookup_key: 'basic_month')

price2 = Stripe::Price.create(
    product: p.id,
    unit_amount: 100000,
    currency: 'inr',
    recurring: {interval: 'year'}
)
Stripe::Price.update(price2.id, lookup_key: 'basic_year')