# Sample users
Experience.destroy_all
User.destroy_all

3.times do
  User.create(email: "me#{rand(0..5)}@gmail.com" , password: "12345678" , first_name: "me#{rand(0..9)}", last_name: "me#{rand(0..9)}" )
end

host_user = User.create!(email: "host@gmail.com" , password: "12345678" , first_name: "host", last_name: "host")
guest_user = User.create!(email: "guest@gmail.com" , password: "12345678" , first_name: "guest", last_name: "guest")

# Sample EXPERIENCES
experience = Experience.new(name: "Challenge Sumo Wrestlers and Enjoy Lunch", description: "Eat, train, and fight like a real Japanese sumo wrestler during this sumo demonstration and authentic Chanko Nabe (hotpot) meal. Discover the history, training, and rules behind the typical sumo match as you watch real clashes. You can even try it yourself during a skirmish with a retired wrestler. Once you’ve worked up an appetite, dig into a tasty Chanko Nabe, a filling meal of hotpot, rice, miso, salad, French fries and more, used by these hulking fighters to gain weight. Admission to the demonstration and meals are both covered.", price: 14500, duration: 180 , address: "Sumida City, Japan", user: host_user )
file = File.open("app/assets/images/sumopic.jpg")
experience.photo.attach(io: file, filename: "experience.jpg", content_type: "image/png")
experience.save

experience = Experience.create!(name: "Adventurous Private Japanese Food Tour", description: "Taste some of Japan’s most notorious delicacies on a private food tour of Tokyo’s Ginza district. Find the food experiences you want and order with the help of your English speaking guide. Open your eyes to local foods you didn’t know existed, or wouldn’t have tried on your own. If you want to try blowfish, horse sashimi, or whale, this is your tour; either way, your guide can adjust the menu and restaurant visits to meet your needs.", price: 17500, duration: 120 , address: "Minato City, Japan", user: User.all.sample )
file = File.open("app/assets/images/foodtourpic.jpg")
experience.photo.attach(io: file, filename: "experience.jpg", content_type: "image/jpg")
experience.save

experience = Experience.create!(name: "Cooking Class and Lunch at a Tuscan Farmhouse with Local Market Tour from Florence", description: "Discover the secrets of Tuscan cooking during this full-day experience, including a market visit and cooking class, topped off with a 4-course lunch. Shop for fresh ingredients at a Florentine market before venturing to a Tuscan farmhouse in the countryside. Take your cue from an expert chef as you create Italian dishes from scratch including bruschetta, pasta, roast pork, and tiramisù. Then sit down to enjoy the fruits of your labor, complemented by Tuscan wine.", price: 21000, duration: 180 , address: "Firenze, Italy", user: host_user )
file = File.open("app/assets/images/tuscanpic.jpg")
experience.photo.attach(io: file, filename: "experience.jpg", content_type: "image/jpg")
experience.save

experience = Experience.create!(name: "Traditional Balinese Cooking Class with Tanah Lot Temple Tour", description: "Immerse yourself in Balinese culture and discover the secrets of traditional Indonesian cuisine on this full-day small-group tour. Cycle through the countryside, visit Tanah Lot Temple, and pick fresh herbs and vegetables, then create delicious local specialties such as coconut satay or banana leaf chicken during an expert-led cooking class.", price: 10500, duration: 180 , address: "Kuta, Indonesia", user: User.all.sample )
file = File.open("app/assets/images/balicookingpic.jpg")
experience.photo.attach(io: file, filename: "experience.jpg", content_type: "image/jpg")
experience.save

experience = Experience.create!(name: "Maple Syrup Private Day Tour", description: "Québec is the maple syrup capital of the world. Get the authentic sugar shack experience on a private day tour with round-trip transport from your Montréal accommodations. In addition to navigating, your guide offers an rare inside look at the sugaring process from tree sap to pancake. The half-day itinerary includes a buffet lunch and a taste of maple toffee frozen on snow.", price: 22500, duration: 180 , address: "Montreal, Canada", user: User.all.sample )
file = File.open("app/assets/images/maplesyruppic.jpg")
experience.photo.attach(io: file, filename: "experience.jpg", content_type: "image/jpg")
experience.save

experience = Experience.create!(name: "Traditional Flamenco Show", description: "Flamenco is indigenous to the south of Spain and, at the Casa del Arte Flamenco, a specific venue for flamenco shows, you can discover this impressive artistic manifestation. Your ticket allows you to attend a 1-hour show, enough to experience a wide range of flamenco styles and see world-class artists express their passion through music, song, rhythm, touch and dance.", price: 5500, duration: 90 , address: "Granada, Spain", user: User.all.sample )
file = File.open("app/assets/images/flamencopic.jpg")
experience.photo.attach(io: file, filename: "experience.jpg", content_type: "image/jpg")
experience.save

# Sample bookings ( status to be set default 0 on migration)
10.times do
  Booking.create(start_date: DateTime.now + rand(0..5), user: User.all.sample, experience: Experience.all.sample, status: 0 )
end
