
# Sample bookings ( status to be set default 0 on migration)
10.times do
  Booking.create(start_date: DateTime.now + rand(0..5), user: User.all.sample, experience: Experience.all.sample, status: 0 )
end

# Sample users
3.times do
  User.new(email: "me#{rand(0..5)}@gmail.com" , password: "12345678" , first_name: "me#{rand(0..9)}", last_name: "me#{rand(0..9)}" )
end
