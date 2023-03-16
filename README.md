# 🍣 Tradys

Miraihabit is an app that helps you reduce your plastic footprint by completing daily challenges. Reduce your plastic consumption and choose new sustainable alternatives.

<br>
<img width="1131" alt="miraihabit_1" src="https://user-images.githubusercontent.com/121839115/224639113-e06de799-aabf-4419-8895-6dacae005b05.png">
<img width="1134" alt="miraihabit_2" src="https://user-images.githubusercontent.com/121839115/224639130-18521e32-29dd-49ac-ab79-e2840a3752cd.png">
<img width="1134" alt="miraihabit_3" src="https://user-images.githubusercontent.com/121839115/224639147-6f754f33-33f1-4711-8a8d-cd06db67ab89.png">
<img width="1134" alt="miraihabit_4" src="https://user-images.githubusercontent.com/121839115/224639183-26489f2f-3372-49f1-96f4-169fbb3cefea.png">

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
