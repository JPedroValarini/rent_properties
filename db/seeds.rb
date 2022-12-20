require 'faker'
require 'byebug'

def generate_pictures(property)

  number_of_pictures = rand(3..5)
  pictures_array = (1..number_of_pictures).map { |picture_name| picture_name }.shuffle
  pictures_array.each do |picture_name|
    property.pictures.attach(io: File.open("#{Rails.root}/app/assets/images/#{picture_name}.jpg"), filename: "#{picture_name}.jpg", content_type: 'image/jpg')
  end
end

50.times do |i|
  property = Property.new(
    name: Faker::Name.name,
    price: rand(1000..50200),
    description: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    bedroom: rand(2..7),
    bathroom: rand(2..4),
  )

  generate_pictures(property)

  property.save!
end
