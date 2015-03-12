if Client.count < 20
  20.times do |x|
    Client.create(first_name: Faker::Name.first_name,
                 last_name: Faker::Name.last_name)
   end
end

@clients = Client.all

@clients.each do |client|
  Address.create(client_id: client.id,
                street: Faker::Address.street_address,
                city: Faker::Address.city,
                state: Faker::Address.state_abbr,
                postcode: Faker::Address.postcode)
end

@clients.each do |client|
  Order.create(client_id: client.id,
              description: Faker::Commerce.product_name,
              price: Faker::Commerce.price,
              quantity: rand(1..10))
end

if Role.count < 20
  @role = ['admin', 'member', 'guest']
  20.times do |x|
    Role.create(title: @role[rand(0..2)])
  end
end

@count = 1
@clients.each do |client|
  client.role_ids = @count
  @count += 1
end