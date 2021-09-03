# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

airlines = Airline.create([
    {
        name: "United Airlines",
        image_url: "https://airlines.iata.org/sites/default/files/event_images/web_aircraft-no-identification_iStock-155439315.png"
    },
    {
        name: "alaska Airlines",
        image_url: "https://airlines.iata.org/sites/default/files/event_images/web_aircraft-no-identification_iStock-155439315.png"
    },
    {
        name: "north korea Airlines",
        image_url: "https://airlines.iata.org/sites/default/files/event_images/web_aircraft-no-identification_iStock-155439315.png"
    },
    {
        name: "japan Airlines",
        image_url: "https://airlines.iata.org/sites/default/files/event_images/web_aircraft-no-identification_iStock-155439315.png"
    },
    {
        name: "china Airlines",
        image_url: "https://airlines.iata.org/sites/default/files/event_images/web_aircraft-no-identification_iStock-155439315.png"
    }
])

reviews = Review.create([
    {
    title: 'great airline',
    description: 'I had a lovely time',
    score: 5,
    airline: airlines.first
    },
    {
    title: 'bad airline',
    description: 'i had a bad time',
    score: 1,
    airline: airlines.first
    }
])