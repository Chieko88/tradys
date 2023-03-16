# 🍣 Tradys 🎎

Enjoy traditions around the world.

<br>
Look for an experience through the searchbar, on the map or through the homepage list.
<img width="1263" alt="tradys_1" src="https://user-images.githubusercontent.com/117881400/225532101-ce84e28c-6944-4e95-b832-b20f90b27326.png">

See the details of one specific experience and book it!
<img width="1274" alt="tradys_2" src="https://user-images.githubusercontent.com/117881400/225532132-47bc2fd5-ffb2-44ab-af38-7c4c9dfbe791.png">

Check your bookings status
<img width="1278" alt="tradys_3" src="https://user-images.githubusercontent.com/117881400/225532155-beff9ae2-e966-4eb1-9b97-4d6af21ee96f.png">

If you are hosting an experience, check the requests of bookings and accept/reject the pending ones
<img width="1274" alt="tradys_4" src="https://user-images.githubusercontent.com/117881400/225532176-f8136e5f-0eaa-4740-8da7-a3d442f3a7f5.png">


App home: [https://tradys.herokuapp.com]

   

## Getting Started
### Setup

Install gems
```
bundle install
```
Install JS packages
```
yarn install
```

### ENV Variables
Create `.env` file
```
touch .env
```
Inside `.env`, set these variables. For any APIs, see group Slack channel.
```
CLOUDINARY_URL=your_own_cloudinary_url_key
MAPBOX_API_KEY=your_own_mapbox_url_key
```

### DB Setup
```
rails db:create
rails db:migrate
rails db:seed
```

### Run a server
```
rails s
```

## Built With
- [Rails 7](https://guides.rubyonrails.org/) - Backend / Front-end
- [Stimulus JS](https://stimulus.hotwired.dev/) - Front-end JS
- [Heroku](https://heroku.com/) - Deployment
- [PostgreSQL](https://www.postgresql.org/) - Database
- [Bootstrap](https://getbootstrap.com/) — Styling
- [Figma](https://www.figma.com) — Prototyping

## Team Members
- [Miriam](https://github.com/mmiy55)
- [Yoshiko](https://github.com/yoshiko-takagi)
- [Emily](https://github.com/emiomashi)

## License
This project is licensed under the MIT License
